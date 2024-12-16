package sequencer_types;
    typedef logic [1:0] note_type;  // 00=empty, 01=inst1, 10=inst2, 11=inst3/drums
    typedef logic [1:0] step_type [31:0][31:0]; // 32x32 grid of 2-bit notes
    
    // Constants for note types
    note_type EMPTY = 2'b00;
    note_type INST1 = 2'b01;
    note_type INST2 = 2'b10;
    note_type INST3 = 2'b11;
    
    // Colors for different note types (4-bit RGB)
    logic [11:0] INST1_COLOR = 12'hF00;  // Red
    logic [11:0] INST2_COLOR = 12'h0F0;  // Green
    logic [11:0] INST3_COLOR = 12'h00F;  // Blue
    
    // Grid constants
    int GRID_START_X = 100;    // Starting X position of grid
    int GRID_START_Y = 60;     // Starting Y position of grid
    int CELL_SIZE = 12;        // Size of each grid cell
    int GRID_COLS = 32;        // 32 steps horizontally
    int GRID_ROWS = 32;        // 32 notes vertically
    
    // Text display positions
    int TEXT_START_Y = 32;    // Y position for text display
    int PAGE_TEXT_X = 100;     // X position for page number
    int STEP_TEXT_X = 200;     // X position for step number
    
    // Pattern storage
    int PAGE_COUNT = 8;        // Number of pattern pages
    
    // Keycodes
    logic [7:0] KEY_UP    = 8'h52;  // KB_UP
    logic [7:0] KEY_LEFT  = 8'h50;  // KB_LEFT
    logic [7:0] KEY_DOWN  = 8'h51;  // KB_DOWN
    logic [7:0] KEY_RIGHT = 8'h4F;  // KB_RIGHT
    logic [7:0] KEY_1     = 8'h1E;  // 1 - Place instrument 1
    logic [7:0] KEY_2     = 8'h1F;  // 2 - Place instrument 2  
    logic [7:0] KEY_3     = 8'h20;  // 3 - Place instrument 3
    logic [7:0] KEY_DEL   = 8'h2A;  // Backspace - Delete note
    logic [7:0] KEY_PREV  = 8'h2F;  // [ - Previous page
    logic [7:0] KEY_NEXT  = 8'h30;  // ] - Next page
    logic [7:0] KEY_SPACE = 8'h2C;  // Spacebar - Play/Pause
endpackage
