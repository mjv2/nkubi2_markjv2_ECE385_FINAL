`timescale 1ns / 1ps

module testbench();
    // Clock and reset signals
    logic clk;
    logic reset;
    
    // Keycode input
    logic [7:0] keycode0_gpio;
    
    // HDMI outputs (ignored in the testbench)
    logic hdmi_tmds_clk_n;
    logic hdmi_tmds_clk_p;
    logic [2:0] hdmi_tmds_data_n;
    logic [2:0] hdmi_tmds_data_p;
    logic gpio_audio_out;
    
    // Internal signals for monitoring
    logic [4:0] cursor_x, cursor_y, current_step;
    logic [2:0] current_page, page;
    logic playing;
    logic [9:0] drawX, drawY;
    logic [3:0] red, green, blue;
    logic [3:0] red_pipe, green_pipe, blue_pipe;
    
    logic ena, enb;
    logic [0:0] wea;
    logic [7:0] addra, addrb;
    logic [63:0] dina, douta, doutb;
    
    // color mapper signals
    logic in_grid_area;
    logic [4:0] grid_x, grid_y;
    logic on_grid_line;
    logic [63:0] bram_data_pipe1, bram_data_pipe2;
    logic [1:0] current_note;
    logic [5:0] note_position_color_mapper;
    
    // sequencer signals
    logic [63:0] current_bram_data;
    logic [63:0] write_data;
    logic write_pending;
    logic [5:0] note_position_sequencer;
    logic [7:0] addra_sequencer;
    
    
    // Instantiate the sequencer_top module
    sequencer_top dut (
        .reset_ah(reset),
        .Clk(clk),
        .keycode0_gpio(keycode0_gpio),
        .hdmi_tmds_clk_n(hdmi_tmds_clk_n),
        .hdmi_tmds_clk_p(hdmi_tmds_clk_p),
        .hdmi_tmds_data_n(hdmi_tmds_data_n),
        .hdmi_tmds_data_p(hdmi_tmds_data_p),
        .audio_out(gpio_audio_out) 
    );
    
    // Access internal signals via hierarchical references
    assign cursor_x                     = dut.cursor_x;
    assign cursor_y                     = dut.cursor_y;
    assign current_step                 = dut.current_step;
    assign current_page                 = dut.current_page;
    assign page                         = dut.page;
    assign playing                      = dut.playing;
    assign drawX                        = dut.drawX;
    assign drawY                        = dut.drawY;
    assign red                          = dut.red;
    assign green                        = dut.green;
    assign blue                         = dut.blue;
    assign red_pipe                     = dut.red_pipe;
    assign green_pipe                   = dut.green_pipe;
    assign blue_pipe                    = dut.blue_pipe;
    assign ena                          = dut.ena;
    assign enb                          = dut.enb;
    assign wea                          = dut.wea;
    assign addra                        = dut.addra;
    assign addrb                        = dut.addrb;
    assign dina                         = dut.dina;
    assign douta                        = dut.douta;
    assign doutb                        = dut.doutb;
    assign in_grid_area                 = dut.color_instance.in_grid_area;
    assign grid_x                       = dut.color_instance.grid_x;
    assign grid_y                       = dut.color_instance.grid_y;
    assign on_grid_line                 = dut.color_instance.on_grid_line;
    assign bram_data_pipe1              = dut.color_instance.bram_data_pipe1;
    assign bram_data_pipe2              = dut.color_instance.bram_data_pipe2;
    assign current_note                 = dut.color_instance.current_note;
    assign note_position_color_mapper   = dut.color_instance.note_position;
    assign current_bram_data            = dut.sequencer_instance.current_bram_data;
    assign write_data                   = dut.sequencer_instance.write_data;
    assign write_pending                = dut.sequencer_instance.write_pending;
    assign note_position_sequencer      = dut.sequencer_instance.note_position;
    assign addra_sequencer              = dut.sequencer_instance.addra;
    
    // Note slice compiler monitoring signals
    logic [12:0] comp_sample_counter;
    logic [7:0] comp_pwm_counter;
    logic [7:0] comp_current_sample;
    logic [15:0] comp_sample_acc;
    logic [4:0] comp_active_notes;
    logic [11:0] comp_rom_addr_12bit;
    logic [7:0] comp_wave_sample, comp_wave_sample_unsigned, comp_sine_sample, comp_square_sample, comp_sawtooth_sample;
    logic comp_sample_clk;
    logic [4:0] comp_note_idx;
    logic [1:0] comp_note_code, comp_note_code_delayed;
    logic [10:0] comp_phase_acc;
    logic [6:0] comp_phase_inc;
    logic [4:0] comp_note_pos;
    
    // Note slice compiler signal assignments
    assign comp_sample_counter = dut.sequencer_instance.note_slice_compiler_inst.sample_counter;
    assign comp_pwm_counter = dut.sequencer_instance.note_slice_compiler_inst.pwm_counter;
    assign comp_current_sample = dut.sequencer_instance.note_slice_compiler_inst.current_sample;
    assign comp_sample_acc = dut.sequencer_instance.note_slice_compiler_inst.sample_acc;
    assign comp_active_notes = dut.sequencer_instance.note_slice_compiler_inst.active_notes;
    assign comp_rom_addr_12bit = dut.sequencer_instance.note_slice_compiler_inst.rom_addr_12bit;
    assign comp_wave_sample = dut.sequencer_instance.note_slice_compiler_inst.wave_sample;
    assign comp_sine_sample = dut.sequencer_instance.note_slice_compiler_inst.sine_sample;
    assign comp_square_sample = dut.sequencer_instance.note_slice_compiler_inst.square_sample; 
    assign comp_sawtooth_sample = dut.sequencer_instance.note_slice_compiler_inst.sawtooth_sample;
    assign comp_sample_clk = dut.sequencer_instance.note_slice_compiler_inst.sample_clk;
    assign comp_note_idx = dut.sequencer_instance.note_slice_compiler_inst.note_idx;
    assign comp_note_code = dut.sequencer_instance.note_slice_compiler_inst.note_code;
    assign comp_note_code_delayed = dut.sequencer_instance.note_slice_compiler_inst.note_code_delayed;
    assign comp_phase_acc = dut.sequencer_instance.note_slice_compiler_inst.phase_acc;
    assign comp_phase_inc = dut.sequencer_instance.note_slice_compiler_inst.phase_inc;
    assign comp_note_pos = dut.sequencer_instance.note_slice_compiler_inst.note_pos;
    
    
    // Task definitions
    typedef enum {LEFT, RIGHT, UP, DOWN} direction_t;
    typedef enum {NEXT, PREV} page_cmd_t;

    task move_cursor(direction_t dir);
        case (dir)
            LEFT:  send_keycode(8'h50);  // LEFT arrow keycode
            RIGHT: send_keycode(8'h4F);  // RIGHT arrow keycode
            UP:    send_keycode(8'h52);  // UP arrow keycode
            DOWN:  send_keycode(8'h51);  // DOWN arrow keycode
        endcase
    endtask

    task place_instrument(int instrument_number);
        case (instrument_number)
            1: send_keycode(8'h1E);  // '1' key
            2: send_keycode(8'h1F);  // '2' key
            3: send_keycode(8'h20);  // '3' key
            default: $display("Invalid instrument number.");
        endcase
    endtask

    task change_page(page_cmd_t cmd);
        case (cmd)
            NEXT: send_keycode(8'h30);  // ']' key
            PREV: send_keycode(8'h2F);  // '[' key
        endcase
    endtask

    task start_playback();
        send_keycode(8'h2C);  // Spacebar keycode
    endtask

    task stop_playback();
        send_keycode(8'h2C);  // Spacebar keycode
    endtask

    
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 100MHz clock
    end

    // Reset generation
    initial begin
        reset = 1;
        repeat (20) @(posedge clk);
        reset = 0;
    end

    // Test stimulus
    initial begin
        // Initialize keycode
        keycode0_gpio = 8'h00;

        // Wait for reset to deassert
        wait (reset == 0);
        repeat (10) @(posedge clk);

        // Test cursor movement
       // move_cursor(RIGHT);
        //move_cursor(DOWN);
        //move_cursor(LEFT);
        move_cursor(DOWN);
        move_cursor(DOWN);
        move_cursor(DOWN);
        move_cursor(DOWN);
        move_cursor(DOWN);
        move_cursor(DOWN);
        move_cursor(DOWN);
        move_cursor(DOWN);
        move_cursor(DOWN);
        move_cursor(DOWN);
        move_cursor(DOWN);
        move_cursor(DOWN);
        move_cursor(DOWN);
        move_cursor(DOWN);
        move_cursor(DOWN);

        // Test note placement
        place_instrument(1);  // Place instrument 1

        // Test page change
        change_page(NEXT);

        // Test playback control
        change_page(PREV);
        start_playback();
        //repeat (100) @(posedge clk);  // Simulate playback for a while
        wait(current_step > 1);
        stop_playback();

        // Test edge cases
        //move_cursor_beyond_bounds();

        // Wait until drawY reaches around 120
        //wait(drawY >= 120);
        //$display("DrawY reached target value: %d", drawY);
        
        // End of test
        $display("All tests completed successfully.");
        $finish;
    end

    task move_cursor_beyond_bounds();
        int i;
        // Move cursor to the right edge
        for (i = 0; i < 35; i++) begin
            move_cursor(RIGHT);
        end
        // Move cursor down beyond the bottom edge
        for (i = 0; i < 35; i++) begin
            move_cursor(DOWN);
        end
    endtask

    task send_keycode(logic [7:0] kc);
        keycode0_gpio = kc;
        @(posedge clk);
        keycode0_gpio = 8'h00;
        repeat (4) @(posedge clk);
    endtask
    
    // Monitoring
    initial begin
        $monitor("Time=%0t | Reset=%b | Keycode=%h | Cursor=(%0d,%0d) | Page=%0d | Playing=%b | Step=%0d",
                 $time, reset, keycode0_gpio, cursor_x, cursor_y, current_page, playing, current_step);
    end

    // Assertions
    property cursor_in_bounds;
        @(posedge clk) disable iff (reset)
        (cursor_x >= 0 && cursor_x < 32) && (cursor_y >= 0 && cursor_y < 32);
    endproperty

    assert property (cursor_in_bounds)
        else $error("Cursor out of bounds at time %0t: cursor_x=%0d, cursor_y=%0d", $time, cursor_x, cursor_y);

    property page_in_bounds;
        @(posedge clk) disable iff (reset)
        current_page >= 0 && current_page < 8;
    endproperty

    assert property (page_in_bounds)
        else $error("Page out of bounds at time %0t: current_page=%0d", $time, current_page);

    // Coverage
    covergroup cursor_movement_cg @(posedge clk);
        coverpoint cursor_x {
            bins x_bins[] = {[0:31]};
        }
        coverpoint cursor_y {
            bins y_bins[] = {[0:31]};
        }
        cross cursor_x, cursor_y;
    endgroup

    cursor_movement_cg cmcg = new();

endmodule
