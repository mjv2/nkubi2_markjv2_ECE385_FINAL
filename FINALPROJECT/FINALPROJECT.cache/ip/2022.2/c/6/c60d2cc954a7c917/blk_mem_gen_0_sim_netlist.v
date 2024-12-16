// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Dec 15 00:40:22 2024
// Host        : MarkLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48720)
`pragma protect data_block
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
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
