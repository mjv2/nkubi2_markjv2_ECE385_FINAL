// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Dec 15 12:46:01 2024
// Host        : Whitney running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/nkubi/385FINAL/FINALPROJECT/FINALPROJECT.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3264 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "6200" *) 
  (* C_READ_DEPTH_B = "6200" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "6200" *) 
  (* C_WRITE_DEPTH_B = "6200" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 45328)
`pragma protect data_block
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
edxs5nLrfAcTB8TZdA==
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
