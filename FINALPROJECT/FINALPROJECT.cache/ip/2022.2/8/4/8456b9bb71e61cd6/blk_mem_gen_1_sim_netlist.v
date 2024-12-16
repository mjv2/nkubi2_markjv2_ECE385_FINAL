// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Dec 15 12:46:00 2024
// Host        : Whitney running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 45472)
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
