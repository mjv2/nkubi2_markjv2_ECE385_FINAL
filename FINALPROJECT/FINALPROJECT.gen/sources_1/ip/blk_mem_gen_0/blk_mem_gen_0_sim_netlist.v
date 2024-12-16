// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Dec 15 00:40:23 2024
// Host        : MarkLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Mark/Desktop/385FINAL_audio_main/FINALPROJECT/FINALPROJECT.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [63:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [63:0]dinb;
  wire [63:0]douta;
  wire [63:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "1" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "1" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     11.527251 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "64" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48576)
`pragma protect data_block
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
G7HLcT/oct4Mq4YA
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
