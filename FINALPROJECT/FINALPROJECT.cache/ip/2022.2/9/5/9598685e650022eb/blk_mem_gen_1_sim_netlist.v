// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Dec 15 00:38:16 2024
// Host        : MarkLaptop running 64-bit major release  (build 9200)
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
