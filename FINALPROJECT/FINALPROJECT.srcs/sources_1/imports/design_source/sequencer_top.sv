`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 11:09:14 AM
// Design Name: 
// Module Name: sequencer_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sequencer_top(
        input logic reset_ah,
        input logic Clk,
        input logic [7:0] keycode0_gpio,
        output logic hdmi_tmds_clk_n,
        output logic hdmi_tmds_clk_p,
        output logic [2:0]hdmi_tmds_data_n,
        output logic [2:0]hdmi_tmds_data_p,
        output logic audio_out
    );
    
    logic clk_25MHz, clk_125MHz;
    logic locked;
    logic [9:0] drawX, drawY;
    logic [4:0] cursor_x, cursor_y, current_step;
    logic [2:0] current_page, page;
    logic playing;

    logic hsync, vsync, vde;
    logic [3:0] red, green, blue;
    logic [3:0] red_pipe, green_pipe, blue_pipe;
    
    // Color pipeline registers
    always_ff @(posedge clk_25MHz) begin
        if (reset_ah) begin
            red_pipe <= '0;
            green_pipe <= '0;
            blue_pipe <= '0;
            page <= '0;
        end
        else begin
            red_pipe <= red;
            green_pipe <= green;
            blue_pipe <= blue;
            page <= current_page;
        end
    end
    
    //bram logic
    logic ena, enb;
    logic [0:0] wea;
    logic [7:0] addra, addrb;
    logic [63:0] dina, douta, doutb;
    
    

        
    //clock wizard configured with a 1x and 5x clock for HDMI
    clk_wiz_0 clk_wiz (
        .clk_out1(clk_25MHz),
        .clk_out2(clk_125MHz),
        .reset(reset_ah),
        .locked(locked),
        .clk_in1(Clk)
    );
    
    //VGA Sync signal generator
    vga_controller vga (
        .pixel_clk(clk_25MHz),
        .reset(reset_ah),
        .hs(hsync),
        .vs(vsync),
        .active_nblank(vde),
        .drawX(drawX),
        .drawY(drawY)
    );    

    //Real Digital VGA to HDMI converter
    hdmi_tx_0 vga_to_hdmi (
        //Clocking and Reset
        .pix_clk(clk_25MHz),
        .pix_clkx5(clk_125MHz),
        .pix_clk_locked(locked),
        //Reset is active LOW
        .rst(reset_ah),
        //Color and Sync Signals
        .red(red_pipe),
        .green(green_pipe),
        .blue(blue_pipe),
        .hsync(hsync),
        .vsync(vsync),
        .vde(vde),
        
        //aux Data (unused)
        .aux0_din(4'b0),
        .aux1_din(4'b0),
        .aux2_din(4'b0),
        .ade(1'b0),
        
        //Differential outputs
        .TMDS_CLK_P(hdmi_tmds_clk_p),          
        .TMDS_CLK_N(hdmi_tmds_clk_n),          
        .TMDS_DATA_P(hdmi_tmds_data_p),         
        .TMDS_DATA_N(hdmi_tmds_data_n)          
    );

    
    //Sequencer Module
    sequencer sequencer_instance(
        .clk(Clk),
        .reset(reset_ah),
        .keycode(keycode0_gpio),
        .cursor_x(cursor_x),
        .cursor_y(cursor_y),
        .current_step(current_step),
        .current_page(current_page),
        .playing(playing),
        .ena(ena),
        .wea(wea),
        .addra(addra),
        .dina(dina),
        .douta(douta),
        .audio_out(audio_out)
    );
    
    //Color Mapper Module   
    color_mapper color_instance(
        .clk(Clk),
        .DrawX(drawX),
        .DrawY(drawY),
        .cursor_x(cursor_x),
        .cursor_y(cursor_y),
        .current_step(current_step),
        .current_page(page),
        .playing(playing),
        .enb(enb),
        .addrb(addrb),
        .doutb(doutb),
        .Red(red),
        .Green(green),
        .Blue(blue)
    );
    
    //Block Memory Module - Dual Port RAM
    blk_mem_gen_0 BRAM(
        .clka(Clk),
        .ena(ena),    // Connect to sequencer's ena
        .wea(wea),    // Connect to sequencer's wea
        .addra(addra), // Connect to sequencer's addra
        .dina(dina),  // Connect to sequencer's dina
        .douta(douta), // Connect to sequencer's douta
        .clkb(Clk),
        .enb(enb),    // Connect to color mapper's enb
        .web(1'b0),
        .addrb(addrb), // Connect to color mapper's addrb
        .dinb(64'b0),
        .doutb(doutb)  // Connect to color mapper's doutb
    );
    
endmodule
