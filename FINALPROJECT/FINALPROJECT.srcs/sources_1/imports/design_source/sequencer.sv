import sequencer_types::*;
module sequencer (
    input  logic        clk,
    input  logic        reset,
    input  logic [7:0]  keycode,
    output logic [4:0]  cursor_x, cursor_y,
    output logic [4:0]  current_step,
    output logic [2:0]  current_page,
    output logic        playing,
    output logic        audio_out,
    
    // BRAM interface
    output logic        ena,
    output logic [0:0]  wea,
    output logic [7:0]  addra,
    output logic [63:0] dina,
    input  logic [63:0] douta
);

    // Clock divider parameters
    parameter CLOCK_HZ = 100_000_000;  // 100MHz system clock
    parameter STEP_HZ = 8;             // Steps per second (can be adjusted for tempo)
    parameter CLOCK_DIVIDER = 12_500_000;  // Clock divider value
    
    logic [$clog2(CLOCK_DIVIDER)-1:0] clock_counter;
    logic step_tick;
    logic [7:0] prev_keycode;
    logic [63:0] current_bram_data;
    logic write_pending;
    logic [63:0] write_data;
    logic [63:0] playback_reg;
    
    logic [5:0] note_position;
    assign note_position = {cursor_y, 1'b0};

    note_slice_compiler note_slice_compiler_inst(
        .clk(clk),
        .playing(playing),
        .note_data(playback_reg),
        .mono_out(audio_out),
        .step_tick(step_tick),
        .reset(reset)
    );

    // Main sequencer logic
    always_ff @(posedge clk) begin
        if (reset) begin
            cursor_x <= 5'b0;
            cursor_y <= 5'b0;
            current_step <= 5'b0;
            playing <= 1'b0;
            prev_keycode <= 8'h00;
            clock_counter <= '0;
            step_tick <= 1'b0;
            current_page <= 3'b0;
            ena <= 1'b1;
            wea <= 1'b0;
            current_bram_data <= 64'h0;
            dina <= 64'h0;
        end
        else begin
            
            
                
            // Clock divider logic
            if (playing) begin
                if (clock_counter == CLOCK_DIVIDER - 1) begin
                    clock_counter <= '0;
                    step_tick <= 1'b1;
                end
                else begin
                    clock_counter <= clock_counter + 1;
                    step_tick <= 1'b0;
                end
            end else begin
                clock_counter <= '0;
                step_tick <= '0;
            end
            

            // BRAM write control
            if (write_pending) begin
                wea <= 1'b1;
                dina <= write_data;
                write_pending <= 1'b0;
            end else begin
                wea <= 1'b0;
                current_bram_data <= douta;
                if (playing) begin
                    playback_reg <= douta;
                end else begin
                    playback_reg <= '0;
                end
            end

            // Update previous keycode
            prev_keycode <= keycode;

            // Only process key if it's a new press
            if (keycode != prev_keycode && keycode != 8'h00) begin
                case (keycode)
                    KEY_SPACE: begin
                        playing <= ~playing;
                        // Always reset step counter when starting playback
                        if (!playing) begin  // If we're about to start playing
                            current_step <= 5'd0;
                        end
                    end
                    KEY_LEFT:  if (cursor_x > 0) cursor_x <= cursor_x - 1;
                    KEY_RIGHT: if (cursor_x < 31) cursor_x <= cursor_x + 1;
                    KEY_UP:    if (cursor_y > 0) cursor_y <= cursor_y - 1;
                    KEY_DOWN:  if (cursor_y < 31) cursor_y <= cursor_y + 1;
                    KEY_PREV: begin
                        // Loop around to last page if at beginning
                        current_page <= (current_page == 0) ? 3'd7 : current_page - 1;
                    end
                    KEY_NEXT: begin
                        // Loop around to first page if at end
                        current_page <= (current_page == 7) ? 3'd0 : current_page + 1;
                    end
                    
                    KEY_1, KEY_2, KEY_3, KEY_DEL: begin
                        write_data <= current_bram_data;
                        case (keycode)
                            KEY_1: write_data[note_position +: 2] <= INST1;
                            KEY_2: write_data[note_position +: 2] <= INST2;
                            KEY_3: write_data[note_position +: 2] <= INST3;
                            KEY_DEL: write_data[note_position +: 2] <= EMPTY;
                        endcase
                        write_pending <= 1'b1;
                    end
                    default: current_bram_data <= current_bram_data;
                endcase
            end
            
            // Update step counter during playback
            if (playing && step_tick) begin
                if (current_step == 5'd31) begin
                    current_step <= 5'd0;
                    // Advance to next page when reaching end of current page
                    current_page <= (current_page == 7) ? 3'd0 : current_page + 1;
                end
                else begin
                    current_step <= current_step + 1;
                end
            end
        end
    end

    // BRAM addressing
    always_comb begin
        // Address format: {3'b page, 5'b row}
        if (!playing) begin
            addra = {current_page, cursor_x};
        end else if (playing) begin
            addra = { current_page, current_step };
        end
    end

endmodule
