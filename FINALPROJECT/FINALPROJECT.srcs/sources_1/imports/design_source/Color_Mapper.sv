import sequencer_types::*;

module color_mapper (
    input  logic        clk,    // Add clock input
    input  logic [9:0] DrawX, DrawY,
    input  logic [4:0] cursor_x, cursor_y,
    input  logic [4:0] current_step,
    input  logic [2:0] current_page,
    input  logic playing,
    
    // BRAM interface
    output logic        enb,
    output logic [7:0]  addrb,
    input  logic [63:0] doutb,
    
    output logic [3:0] Red, Green, Blue
);
    
    // Font ROM instance
    logic [10:0] rom_addr;
    logic [7:0] rom_data;
    font_rom font_rom_instance(
        .addr(rom_addr),
        .data(rom_data)
    );

    // Text display logic
    logic in_text_area;
    logic [3:0] char_x, char_y;
    logic [7:0] current_char;
    logic pixel_on;

    // Calculate if we're in the text area
    assign in_text_area = (DrawY >= TEXT_START_Y) && (DrawY < TEXT_START_Y + 16) &&
                         (DrawX >= PAGE_TEXT_X) && (DrawX < PAGE_TEXT_X + 48);  // "PAGE X" is 6 chars

    // Calculate character position and pixel position within character
    assign char_x = (DrawX - PAGE_TEXT_X) >> 3;  // Divide by 8 (character width)
    assign char_y = DrawY - TEXT_START_Y;

    // Select current character
    always_comb begin
        case (char_x)
            4'd0: current_char = 8'h50;  // P
            4'd1: current_char = 8'h41;  // A
            4'd2: current_char = 8'h47;  // G
            4'd3: current_char = 8'h45;  // E
            4'd4: current_char = 8'h3A;  // :
            4'd5: current_char = 8'h30 + current_page;  // 0-7
            default: current_char = 8'h00;
        endcase
    end

    // Calculate ROM address and check if pixel should be on
    assign rom_addr = {current_char[6:0], char_y[3:0]};
    logic [9:0] rom_pix;
    assign rom_pix = (DrawX - PAGE_TEXT_X);
    assign pixel_on = rom_data[7 - rom_pix[2:0]];
    
    // Calculate grid position
    logic in_grid_area;
    logic [4:0] grid_x, grid_y;
    
    assign in_grid_area = (DrawX >= GRID_START_X) && 
                         (DrawX < GRID_START_X + GRID_COLS * CELL_SIZE) &&
                         (DrawY >= GRID_START_Y) && 
                         (DrawY < GRID_START_Y + GRID_ROWS * CELL_SIZE);
                         
    // Calculate grid positions using comparison chains
    always_comb begin
        // Calculate grid_x (CELL_SIZE is 12)
        if      (DrawX - GRID_START_X < 12)  grid_x = 0;
        else if (DrawX - GRID_START_X < 24)  grid_x = 1;
        else if (DrawX - GRID_START_X < 36)  grid_x = 2;
        else if (DrawX - GRID_START_X < 48)  grid_x = 3;
        else if (DrawX - GRID_START_X < 60)  grid_x = 4;
        else if (DrawX - GRID_START_X < 72)  grid_x = 5;
        else if (DrawX - GRID_START_X < 84)  grid_x = 6;
        else if (DrawX - GRID_START_X < 96)  grid_x = 7;
        else if (DrawX - GRID_START_X < 108) grid_x = 8;
        else if (DrawX - GRID_START_X < 120) grid_x = 9;
        else if (DrawX - GRID_START_X < 132) grid_x = 10;
        else if (DrawX - GRID_START_X < 144) grid_x = 11;
        else if (DrawX - GRID_START_X < 156) grid_x = 12;
        else if (DrawX - GRID_START_X < 168) grid_x = 13;
        else if (DrawX - GRID_START_X < 180) grid_x = 14;
        else if (DrawX - GRID_START_X < 192) grid_x = 15;
        else if (DrawX - GRID_START_X < 204) grid_x = 16;
        else if (DrawX - GRID_START_X < 216) grid_x = 17;
        else if (DrawX - GRID_START_X < 228) grid_x = 18;
        else if (DrawX - GRID_START_X < 240) grid_x = 19;
        else if (DrawX - GRID_START_X < 252) grid_x = 20;
        else if (DrawX - GRID_START_X < 264) grid_x = 21;
        else if (DrawX - GRID_START_X < 276) grid_x = 22;
        else if (DrawX - GRID_START_X < 288) grid_x = 23;
        else if (DrawX - GRID_START_X < 300) grid_x = 24;
        else if (DrawX - GRID_START_X < 312) grid_x = 25;
        else if (DrawX - GRID_START_X < 324) grid_x = 26;
        else if (DrawX - GRID_START_X < 336) grid_x = 27;
        else if (DrawX - GRID_START_X < 348) grid_x = 28;
        else if (DrawX - GRID_START_X < 360) grid_x = 29;
        else if (DrawX - GRID_START_X < 372) grid_x = 30;
        else if (DrawX - GRID_START_X < 384) grid_x = 31;
        else                                 grid_x = 31;

        // Calculate grid_y (CELL_SIZE is 12)
        if      (DrawY - GRID_START_Y < 12)  grid_y = 0;
        else if (DrawY - GRID_START_Y < 24)  grid_y = 1;
        else if (DrawY - GRID_START_Y < 36)  grid_y = 2;
        else if (DrawY - GRID_START_Y < 48)  grid_y = 3;
        else if (DrawY - GRID_START_Y < 60)  grid_y = 4;
        else if (DrawY - GRID_START_Y < 72)  grid_y = 5;
        else if (DrawY - GRID_START_Y < 84)  grid_y = 6;
        else if (DrawY - GRID_START_Y < 96)  grid_y = 7;
        else if (DrawY - GRID_START_Y < 108) grid_y = 8;
        else if (DrawY - GRID_START_Y < 120) grid_y = 9;
        else if (DrawY - GRID_START_Y < 132) grid_y = 10;
        else if (DrawY - GRID_START_Y < 144) grid_y = 11;
        else if (DrawY - GRID_START_Y < 156) grid_y = 12;
        else if (DrawY - GRID_START_Y < 168) grid_y = 13;
        else if (DrawY - GRID_START_Y < 180) grid_y = 14;
        else if (DrawY - GRID_START_Y < 192) grid_y = 15;
        else if (DrawY - GRID_START_Y < 204) grid_y = 16;
        else if (DrawY - GRID_START_Y < 216) grid_y = 17;
        else if (DrawY - GRID_START_Y < 228) grid_y = 18;
        else if (DrawY - GRID_START_Y < 240) grid_y = 19;
        else if (DrawY - GRID_START_Y < 252) grid_y = 20;
        else if (DrawY - GRID_START_Y < 264) grid_y = 21;
        else if (DrawY - GRID_START_Y < 276) grid_y = 22;
        else if (DrawY - GRID_START_Y < 288) grid_y = 23;
        else if (DrawY - GRID_START_Y < 300) grid_y = 24;
        else if (DrawY - GRID_START_Y < 312) grid_y = 25;
        else if (DrawY - GRID_START_Y < 324) grid_y = 26;
        else if (DrawY - GRID_START_Y < 336) grid_y = 27;
        else if (DrawY - GRID_START_Y < 348) grid_y = 28;
        else if (DrawY - GRID_START_Y < 360) grid_y = 29;
        else if (DrawY - GRID_START_Y < 372) grid_y = 30;
        else if (DrawY - GRID_START_Y < 384) grid_y = 31;
        else                                 grid_y = 31;
    end

    // Detect cell borders
    logic on_grid_line;
    assign on_grid_line = ((DrawX - GRID_START_X) % CELL_SIZE == 0) ||
                         ((DrawY - GRID_START_Y) % CELL_SIZE == 0);

    // Properly pipeline the BRAM reads
    logic [63:0] bram_data_pipe1, bram_data_pipe2;
    always_ff @(posedge clk) begin
        bram_data_pipe1 <= doutb;
        bram_data_pipe2 <= bram_data_pipe1;
    end

    // Get note at current position from fully pipelined data
    logic [1:0] current_note;
    logic [5:0] note_position;
    assign note_position = {grid_y, 1'b0};
    assign current_note = bram_data_pipe2[note_position +: 2];

    // BRAM control
    always_comb begin
        enb = 1'b1;
        addrb = {current_page, grid_x};
    end
    
    // Color selection logic
    always_comb begin
        if (in_text_area && pixel_on) begin
            {Red, Green, Blue} = 12'hFFF;  // White text
        end
        else if (!in_grid_area) begin
            {Red, Green, Blue} = 12'h111;  // Dark grey background
        end
        else if (on_grid_line) begin
            {Red, Green, Blue} = 12'h444;  // Medium grey grid lines
        end
        else if (playing && grid_x == current_step) begin
            {Red, Green, Blue} = 12'hFF0;  // Yellow playback position
        end
        else if (grid_x == cursor_x && grid_y == cursor_y) begin
            {Red, Green, Blue} = 12'hFFF;  // White cursor
        end
        else begin
            case (current_note)
                EMPTY: {Red, Green, Blue} = 12'h222;  // Dark grey
                INST1: {Red, Green, Blue} = INST1_COLOR;
                INST2: {Red, Green, Blue} = INST2_COLOR;
                INST3: {Red, Green, Blue} = INST3_COLOR;
            endcase
        end
    end
    
endmodule
