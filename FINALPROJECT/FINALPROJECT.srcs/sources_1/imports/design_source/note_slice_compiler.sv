module note_slice_compiler(
    input logic clk,           // 100MHz system clock
    input logic reset,
    input logic playing,
    input logic [63:0] note_data,
    input logic step_tick,
    output logic mono_out
);
    
    // PWM parameters
    localparam PWM_BITS = 8;
    
    // Timing counters
    logic [12:0] sample_counter;  // hardcoded for 5882
    logic [PWM_BITS-1:0] pwm_counter;
    
    // Audio processing
    logic [7:0] current_sample;
    logic [15:0] sample_acc;
    logic [4:0] active_notes;
    
    // Note frequency increments
    logic [7:0] D5_i = 60, CS5_i = 57, C5_i = 54, B4_i = 51, AS4_i = 48, A4_i = 45, GS4_i = 43, G4_i = 40;
    logic [7:0] FS4_i = 38, F4_i = 36, E4_i = 34, DS4_i = 32, D4_i = 30, CS4_i = 28, C4_i = 27, B3_i = 25;
    logic [7:0] AS3_i = 24, A3_i = 23, GS3_i = 21, G3_i = 20, FS3_i = 19, F3_i = 18, E3_i = 17, DS3_i = 16;
    logic [7:0] D3_i = 15, CS3_i = 14, C3_i = 13, B2_i = 13, AS2_i = 12;
    
    // Wave table ROMs
    logic [7:0] wave_sample;  // The selected sample from the ROMs
    logic [7:0] sine_sample, square_sample, sawtooth_sample;
    logic [11:0] rom_addr_12bit;  // 12-bit address for the ROMs
    
    sine_rom sine_wave (
        .clk(clk),
        .addr(rom_addr_12bit),
        .q(sine_sample)
    );

    square_rom square_wave (
        .clk(clk),
        .addr(rom_addr_12bit),
        .q(square_sample)
    );

    sawtooth_rom sawtooth_wave (
        .clk(clk),
        .addr(rom_addr_12bit),
        .q(sawtooth_sample)
    );

    // Sample clock generation (17kHz)
    logic sample_clk;
    always_ff @(posedge clk) begin
        if (reset || !playing) begin
            sample_counter <= '0;
            sample_clk <= 0;
        end else if (sample_counter >= 13'd5881) begin  // 5882-1, hardcoded
            sample_counter <= '0;
            sample_clk <= 1;
        end else begin
            sample_counter <= sample_counter + 1;
            sample_clk <= 0;
        end
    end

    // Note processing
    logic [4:0] note_idx;
    logic [1:0] note_code, note_code_delayed, note_code_delayed_1;
    logic [11:0] phase_acc;
    logic [7:0] phase_inc;
    logic [4:0] note_pos;

    // Phase increment lookup based on note position
    always_comb begin
        note_pos = note_idx[4:0];
        case (note_pos)
            0  : phase_inc = D5_i;
            1  : phase_inc = CS5_i;
            2  : phase_inc = C5_i;
            3  : phase_inc = B4_i;
            4  : phase_inc = AS4_i;
            5  : phase_inc = A4_i;
            6  : phase_inc = GS4_i;
            7  : phase_inc = G4_i;
            8  : phase_inc = FS4_i;
            9  : phase_inc = F4_i;
            10 : phase_inc = E4_i;
            11 : phase_inc = DS4_i;
            12 : phase_inc = D4_i;
            13 : phase_inc = CS4_i;
            14 : phase_inc = C4_i;
            15 : phase_inc = B3_i;
            16 : phase_inc = AS3_i;
            17 : phase_inc = A3_i;
            18 : phase_inc = GS3_i;
            19 : phase_inc = G3_i;
            20 : phase_inc = FS3_i;
            21 : phase_inc = F3_i;
            22 : phase_inc = E3_i;
            23 : phase_inc = DS3_i;
            24 : phase_inc = D3_i;
            25 : phase_inc = CS3_i;
            26 : phase_inc = C3_i;
            27 : phase_inc = B2_i;
            28 : phase_inc = AS2_i;
            default : phase_inc = 0;
        endcase
    end

    // Clock divider for 50MHz operation
    logic clk_50MHz;
    always_ff @(posedge clk) begin
        if (reset) begin
            clk_50MHz <= 0;
        end
        else begin
            clk_50MHz <= ~clk_50MHz;
        end
    end

    always_ff @(posedge clk) begin
        if (reset || !playing) begin
            note_idx <= '0;
            phase_acc <= '0;
            current_sample <= 8'h80;  // Midpoint (silence)
            sample_acc <= '0;
            active_notes <= '0;
            note_code = note_data[0 +: 2];
            note_code_delayed <= 2'b00;
            note_code_delayed_1 <= 2'b00;
        end else if (sample_clk) begin
            // Reset for new sample
            note_idx <= '0;
            sample_acc <= '0;
            active_notes <= '0;
        end else if (step_tick) begin
            // Reset phase accumulator on step change
            phase_acc <= '0;
            
        end else begin
            // Process one note per clock
            if (note_idx < 31) begin
                note_code <= note_data[note_idx*2 +: 2];
                note_code_delayed <= note_code;
                note_code_delayed_1 <= note_code_delayed;
                if (note_code != 2'b00) begin
                    // Accumulate phase for this note
                    phase_acc <= phase_acc + phase_inc;
                    active_notes <= active_notes + 1;
                end
                if (note_code_delayed_1 != 2'b00) begin
                    // Accumulate phase for this note
                    sample_acc <= sample_acc + wave_sample;
                end
                note_idx <= note_idx + 1;
            end
            
            // Update final sample
            else begin
                if (active_notes > 0)
                    // current_sample <= sample_acc / active_notes;
                    current_sample <= sample_acc;
                else
                    current_sample <= 8'h00;
            end
        end
    end

    // ROM addressing and wave sample selection
    always_comb begin
        // Use phase_acc as the ROM address
        rom_addr_12bit = phase_acc[11:0];
        
        // Select the appropriate waveform based on note_code
        if (note_code_delayed_1 == 2'b01) begin
            wave_sample = sine_sample;
        end
        else if (note_code_delayed_1 == 2'b10) begin
            wave_sample = square_sample;
        end
        else if (note_code_delayed_1 == 2'b11) begin
            wave_sample = sawtooth_sample;
        end
        else begin
            wave_sample = 8'h00;  // Silence for note_code_delayed 2'b00
        end
    end

    // PWM generation (direct from system clock)
    always_ff @(posedge clk) begin
        if (reset || !playing) begin
            pwm_counter <= '0;
            mono_out <= 1'b0;
        end else begin
            pwm_counter <= pwm_counter + 1;
            mono_out <= (pwm_counter < current_sample);
        end
    end

endmodule
