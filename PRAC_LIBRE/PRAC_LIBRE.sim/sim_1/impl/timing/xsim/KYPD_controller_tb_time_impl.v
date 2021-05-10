// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon May 10 19:56:20 2021
// Host        : LAPTOP-NU8BRVH7 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/PRACTICA_LIBRE/modelado_de_sistemas_computacionales/PRAC_LIBRE/PRAC_LIBRE.sim/sim_1/impl/timing/xsim/KYPD_controller_tb_time_impl.v
// Design      : KYPD_controller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "eb14b6c" *) 
(* NotValidForBitStream *)
module KYPD_controller
   (RST,
    CLK,
    ROW,
    COL,
    KEY_CODE_OK,
    KEY_CODE);
  input RST;
  input CLK;
  input [3:0]ROW;
  output [3:0]COL;
  output KEY_CODE_OK;
  output [3:0]KEY_CODE;

  wire CE_COL_i_1_n_0;
  wire CE_COL_reg_n_0;
  wire CE_ROW;
  wire CE_ROW_reg_n_0;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [3:0]COL;
  wire \COL_CNT_reg_n_0_[0] ;
  wire \COL_CNT_reg_n_0_[1] ;
  wire [3:0]COL_OBUF;
  wire [9:0]CONT;
  wire [9:0]CONT2;
  wire \CONT2[6]_i_2_n_0 ;
  wire \CONT2[6]_i_3_n_0 ;
  wire \CONT2[7]_i_2_n_0 ;
  wire \CONT2[9]_i_2_n_0 ;
  wire \CONT2_reg_n_0_[0] ;
  wire \CONT2_reg_n_0_[1] ;
  wire \CONT2_reg_n_0_[2] ;
  wire \CONT2_reg_n_0_[3] ;
  wire \CONT2_reg_n_0_[4] ;
  wire \CONT2_reg_n_0_[5] ;
  wire \CONT2_reg_n_0_[6] ;
  wire \CONT2_reg_n_0_[7] ;
  wire \CONT2_reg_n_0_[8] ;
  wire \CONT2_reg_n_0_[9] ;
  wire \CONT[0]_i_2_n_0 ;
  wire \CONT[2]_i_2_n_0 ;
  wire \CONT[2]_i_3_n_0 ;
  wire \CONT[9]_i_2_n_0 ;
  wire \CONT_reg_n_0_[0] ;
  wire \CONT_reg_n_0_[1] ;
  wire \CONT_reg_n_0_[2] ;
  wire \CONT_reg_n_0_[3] ;
  wire \CONT_reg_n_0_[4] ;
  wire \CONT_reg_n_0_[5] ;
  wire \CONT_reg_n_0_[6] ;
  wire \CONT_reg_n_0_[7] ;
  wire \CONT_reg_n_0_[8] ;
  wire \CONT_reg_n_0_[9] ;
  wire DF;
  wire [3:0]KEY_CODE;
  wire [3:0]KEY_CODE_AUX;
  wire [3:0]KEY_CODE_OBUF;
  wire KEY_CODE_OK;
  wire KEY_CODE_OK_OBUF;
  wire KEY_CODE_OK_i_1_n_0;
  wire Q;
  wire [3:0]ROW;
  wire [3:0]ROW_IBUF;
  wire RST;
  wire RST_IBUF;
  wire \db[1].U2_n_1 ;
  wire \db[1].U2_n_2 ;
  wire \db[2].U2_n_1 ;
  wire \db[2].U2_n_2 ;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;

initial begin
 $sdf_annotate("KYPD_controller_tb_time_impl.sdf",,,,"tool_control");
end
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    CE_COL_i_1
       (.I0(\CONT_reg_n_0_[0] ),
        .I1(CE_ROW_reg_n_0),
        .I2(\CONT_reg_n_0_[1] ),
        .I3(\CONT_reg_n_0_[2] ),
        .I4(\CONT[2]_i_3_n_0 ),
        .I5(\CONT[2]_i_2_n_0 ),
        .O(CE_COL_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    CE_COL_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CE_COL_i_1_n_0),
        .Q(CE_COL_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    CE_ROW_i_1
       (.I0(\CONT2_reg_n_0_[1] ),
        .I1(\CONT2_reg_n_0_[0] ),
        .I2(\CONT2_reg_n_0_[2] ),
        .I3(\CONT2_reg_n_0_[6] ),
        .I4(\CONT2[6]_i_2_n_0 ),
        .O(CE_ROW));
  FDCE #(
    .INIT(1'b0)) 
    CE_ROW_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CE_ROW),
        .Q(CE_ROW_reg_n_0));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    \COL_CNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\db[2].U2_n_2 ),
        .Q(\COL_CNT_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \COL_CNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\db[2].U2_n_1 ),
        .Q(\COL_CNT_reg_n_0_[1] ));
  OBUF \COL_OBUF[0]_inst 
       (.I(COL_OBUF[0]),
        .O(COL[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \COL_OBUF[0]_inst_i_1 
       (.I0(\COL_CNT_reg_n_0_[1] ),
        .I1(\COL_CNT_reg_n_0_[0] ),
        .O(COL_OBUF[0]));
  OBUF \COL_OBUF[1]_inst 
       (.I(COL_OBUF[1]),
        .O(COL[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \COL_OBUF[1]_inst_i_1 
       (.I0(\COL_CNT_reg_n_0_[1] ),
        .I1(\COL_CNT_reg_n_0_[0] ),
        .O(COL_OBUF[1]));
  OBUF \COL_OBUF[2]_inst 
       (.I(COL_OBUF[2]),
        .O(COL[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \COL_OBUF[2]_inst_i_1 
       (.I0(\COL_CNT_reg_n_0_[0] ),
        .I1(\COL_CNT_reg_n_0_[1] ),
        .O(COL_OBUF[2]));
  OBUF \COL_OBUF[3]_inst 
       (.I(COL_OBUF[3]),
        .O(COL[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \COL_OBUF[3]_inst_i_1 
       (.I0(\COL_CNT_reg_n_0_[1] ),
        .I1(\COL_CNT_reg_n_0_[0] ),
        .O(COL_OBUF[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \CONT2[0]_i_1 
       (.I0(\CONT2_reg_n_0_[0] ),
        .O(CONT2[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00FFDF00)) 
    \CONT2[1]_i_1 
       (.I0(\CONT2_reg_n_0_[6] ),
        .I1(\CONT2[6]_i_2_n_0 ),
        .I2(\CONT2_reg_n_0_[2] ),
        .I3(\CONT2_reg_n_0_[0] ),
        .I4(\CONT2_reg_n_0_[1] ),
        .O(CONT2[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h51FFAA00)) 
    \CONT2[2]_i_1 
       (.I0(\CONT2_reg_n_0_[1] ),
        .I1(\CONT2_reg_n_0_[6] ),
        .I2(\CONT2[6]_i_2_n_0 ),
        .I3(\CONT2_reg_n_0_[0] ),
        .I4(\CONT2_reg_n_0_[2] ),
        .O(CONT2[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \CONT2[3]_i_1 
       (.I0(\CONT2_reg_n_0_[1] ),
        .I1(\CONT2_reg_n_0_[0] ),
        .I2(\CONT2_reg_n_0_[2] ),
        .I3(\CONT2_reg_n_0_[3] ),
        .O(CONT2[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \CONT2[4]_i_1 
       (.I0(\CONT2_reg_n_0_[3] ),
        .I1(\CONT2_reg_n_0_[2] ),
        .I2(\CONT2_reg_n_0_[0] ),
        .I3(\CONT2_reg_n_0_[1] ),
        .I4(\CONT2_reg_n_0_[4] ),
        .O(CONT2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \CONT2[5]_i_1 
       (.I0(\CONT2_reg_n_0_[2] ),
        .I1(\CONT2_reg_n_0_[0] ),
        .I2(\CONT2_reg_n_0_[1] ),
        .I3(\CONT2_reg_n_0_[3] ),
        .I4(\CONT2_reg_n_0_[4] ),
        .I5(\CONT2_reg_n_0_[5] ),
        .O(CONT2[5]));
  LUT6 #(
    .INIT(64'hFFBF3FBF0000C000)) 
    \CONT2[6]_i_1 
       (.I0(\CONT2[6]_i_2_n_0 ),
        .I1(\CONT2_reg_n_0_[2] ),
        .I2(\CONT2_reg_n_0_[0] ),
        .I3(\CONT2_reg_n_0_[1] ),
        .I4(\CONT2[6]_i_3_n_0 ),
        .I5(\CONT2_reg_n_0_[6] ),
        .O(CONT2[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \CONT2[6]_i_2 
       (.I0(\CONT2_reg_n_0_[8] ),
        .I1(\CONT2_reg_n_0_[9] ),
        .I2(\CONT2_reg_n_0_[5] ),
        .I3(\CONT2_reg_n_0_[7] ),
        .I4(\CONT2_reg_n_0_[4] ),
        .I5(\CONT2_reg_n_0_[3] ),
        .O(\CONT2[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \CONT2[6]_i_3 
       (.I0(\CONT2_reg_n_0_[4] ),
        .I1(\CONT2_reg_n_0_[3] ),
        .I2(\CONT2_reg_n_0_[5] ),
        .O(\CONT2[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \CONT2[7]_i_1 
       (.I0(\CONT2_reg_n_0_[6] ),
        .I1(\CONT2_reg_n_0_[5] ),
        .I2(\CONT2_reg_n_0_[3] ),
        .I3(\CONT2_reg_n_0_[4] ),
        .I4(\CONT2[7]_i_2_n_0 ),
        .I5(\CONT2_reg_n_0_[7] ),
        .O(CONT2[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \CONT2[7]_i_2 
       (.I0(\CONT2_reg_n_0_[2] ),
        .I1(\CONT2_reg_n_0_[0] ),
        .I2(\CONT2_reg_n_0_[1] ),
        .O(\CONT2[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \CONT2[8]_i_1 
       (.I0(\CONT2_reg_n_0_[7] ),
        .I1(\CONT2[9]_i_2_n_0 ),
        .I2(\CONT2_reg_n_0_[6] ),
        .I3(\CONT2_reg_n_0_[8] ),
        .O(CONT2[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \CONT2[9]_i_1 
       (.I0(\CONT2_reg_n_0_[8] ),
        .I1(\CONT2_reg_n_0_[6] ),
        .I2(\CONT2[9]_i_2_n_0 ),
        .I3(\CONT2_reg_n_0_[7] ),
        .I4(\CONT2_reg_n_0_[9] ),
        .O(CONT2[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \CONT2[9]_i_2 
       (.I0(\CONT2_reg_n_0_[5] ),
        .I1(\CONT2_reg_n_0_[3] ),
        .I2(\CONT2_reg_n_0_[4] ),
        .I3(\CONT2_reg_n_0_[1] ),
        .I4(\CONT2_reg_n_0_[0] ),
        .I5(\CONT2_reg_n_0_[2] ),
        .O(\CONT2[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2[0]),
        .Q(\CONT2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2[1]),
        .Q(\CONT2_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2[2]),
        .Q(\CONT2_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2[3]),
        .Q(\CONT2_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2[4]),
        .Q(\CONT2_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2[5]),
        .Q(\CONT2_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2[6]),
        .Q(\CONT2_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2[7]),
        .Q(\CONT2_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2[8]),
        .Q(\CONT2_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2[9]),
        .Q(\CONT2_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \CONT[0]_i_1 
       (.I0(\CONT[0]_i_2_n_0 ),
        .I1(\CONT[2]_i_3_n_0 ),
        .I2(\CONT_reg_n_0_[3] ),
        .I3(\CONT_reg_n_0_[8] ),
        .I4(\CONT_reg_n_0_[9] ),
        .I5(\CONT_reg_n_0_[0] ),
        .O(CONT[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \CONT[0]_i_2 
       (.I0(\CONT_reg_n_0_[1] ),
        .I1(\CONT_reg_n_0_[2] ),
        .O(\CONT[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00FFEF00)) 
    \CONT[1]_i_1 
       (.I0(\CONT[2]_i_2_n_0 ),
        .I1(\CONT[2]_i_3_n_0 ),
        .I2(\CONT_reg_n_0_[2] ),
        .I3(\CONT_reg_n_0_[1] ),
        .I4(\CONT_reg_n_0_[0] ),
        .O(CONT[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h54FFAA00)) 
    \CONT[2]_i_1 
       (.I0(\CONT_reg_n_0_[0] ),
        .I1(\CONT[2]_i_2_n_0 ),
        .I2(\CONT[2]_i_3_n_0 ),
        .I3(\CONT_reg_n_0_[1] ),
        .I4(\CONT_reg_n_0_[2] ),
        .O(CONT[2]));
  LUT3 #(
    .INIT(8'hFE)) 
    \CONT[2]_i_2 
       (.I0(\CONT_reg_n_0_[9] ),
        .I1(\CONT_reg_n_0_[8] ),
        .I2(\CONT_reg_n_0_[3] ),
        .O(\CONT[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \CONT[2]_i_3 
       (.I0(\CONT_reg_n_0_[5] ),
        .I1(\CONT_reg_n_0_[4] ),
        .I2(\CONT_reg_n_0_[7] ),
        .I3(\CONT_reg_n_0_[6] ),
        .O(\CONT[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \CONT[3]_i_1 
       (.I0(\CONT_reg_n_0_[0] ),
        .I1(\CONT_reg_n_0_[1] ),
        .I2(\CONT_reg_n_0_[2] ),
        .I3(\CONT_reg_n_0_[3] ),
        .O(CONT[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \CONT[4]_i_1 
       (.I0(\CONT_reg_n_0_[3] ),
        .I1(\CONT_reg_n_0_[2] ),
        .I2(\CONT_reg_n_0_[1] ),
        .I3(\CONT_reg_n_0_[0] ),
        .I4(\CONT_reg_n_0_[4] ),
        .O(CONT[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \CONT[5]_i_1 
       (.I0(\CONT_reg_n_0_[4] ),
        .I1(\CONT_reg_n_0_[0] ),
        .I2(\CONT_reg_n_0_[1] ),
        .I3(\CONT_reg_n_0_[2] ),
        .I4(\CONT_reg_n_0_[3] ),
        .I5(\CONT_reg_n_0_[5] ),
        .O(CONT[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \CONT[6]_i_1 
       (.I0(\CONT[9]_i_2_n_0 ),
        .I1(\CONT_reg_n_0_[6] ),
        .O(CONT[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \CONT[7]_i_1 
       (.I0(\CONT_reg_n_0_[6] ),
        .I1(\CONT[9]_i_2_n_0 ),
        .I2(\CONT_reg_n_0_[7] ),
        .O(CONT[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \CONT[8]_i_1 
       (.I0(\CONT_reg_n_0_[7] ),
        .I1(\CONT[9]_i_2_n_0 ),
        .I2(\CONT_reg_n_0_[6] ),
        .I3(\CONT_reg_n_0_[8] ),
        .O(CONT[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \CONT[9]_i_1 
       (.I0(\CONT_reg_n_0_[8] ),
        .I1(\CONT_reg_n_0_[6] ),
        .I2(\CONT[9]_i_2_n_0 ),
        .I3(\CONT_reg_n_0_[7] ),
        .I4(\CONT_reg_n_0_[9] ),
        .O(CONT[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \CONT[9]_i_2 
       (.I0(\CONT_reg_n_0_[4] ),
        .I1(\CONT_reg_n_0_[0] ),
        .I2(\CONT_reg_n_0_[1] ),
        .I3(\CONT_reg_n_0_[2] ),
        .I4(\CONT_reg_n_0_[3] ),
        .I5(\CONT_reg_n_0_[5] ),
        .O(\CONT[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT[0]),
        .Q(\CONT_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT[1]),
        .Q(\CONT_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT[2]),
        .Q(\CONT_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT[3]),
        .Q(\CONT_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT[4]),
        .Q(\CONT_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT[5]),
        .Q(\CONT_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT[6]),
        .Q(\CONT_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT[7]),
        .Q(\CONT_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT[8]),
        .Q(\CONT_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT[9]),
        .Q(\CONT_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    DF_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\db[1].U2_n_1 ),
        .Q(DF));
  OBUF \KEY_CODE_OBUF[0]_inst 
       (.I(KEY_CODE_OBUF[0]),
        .O(KEY_CODE[0]));
  OBUF \KEY_CODE_OBUF[1]_inst 
       (.I(KEY_CODE_OBUF[1]),
        .O(KEY_CODE[1]));
  OBUF \KEY_CODE_OBUF[2]_inst 
       (.I(KEY_CODE_OBUF[2]),
        .O(KEY_CODE[2]));
  OBUF \KEY_CODE_OBUF[3]_inst 
       (.I(KEY_CODE_OBUF[3]),
        .O(KEY_CODE[3]));
  OBUF KEY_CODE_OK_OBUF_inst
       (.I(KEY_CODE_OK_OBUF),
        .O(KEY_CODE_OK));
  LUT1 #(
    .INIT(2'h1)) 
    KEY_CODE_OK_i_1
       (.I0(RST_IBUF),
        .O(KEY_CODE_OK_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    KEY_CODE_OK_reg
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_CODE_OK_i_1_n_0),
        .D(DF),
        .Q(KEY_CODE_OK_OBUF),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \KEY_CODE_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(DF),
        .CLR(RST_IBUF),
        .D(KEY_CODE_AUX[0]),
        .Q(KEY_CODE_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \KEY_CODE_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(DF),
        .CLR(RST_IBUF),
        .D(KEY_CODE_AUX[1]),
        .Q(KEY_CODE_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \KEY_CODE_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(DF),
        .CLR(RST_IBUF),
        .D(KEY_CODE_AUX[2]),
        .Q(KEY_CODE_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \KEY_CODE_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(DF),
        .CLR(RST_IBUF),
        .D(KEY_CODE_AUX[3]),
        .Q(KEY_CODE_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\db[1].U2_n_2 ),
        .Q(Q));
  IBUF \ROW_IBUF[0]_inst 
       (.I(ROW[0]),
        .O(ROW_IBUF[0]));
  IBUF \ROW_IBUF[1]_inst 
       (.I(ROW[1]),
        .O(ROW_IBUF[1]));
  IBUF \ROW_IBUF[2]_inst 
       (.I(ROW[2]),
        .O(ROW_IBUF[2]));
  IBUF \ROW_IBUF[3]_inst 
       (.I(ROW[3]),
        .O(ROW_IBUF[3]));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  debounce_module \db[0].U2 
       (.AR(RST_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\COL_CNT_reg[0] (\COL_CNT_reg_n_0_[0] ),
        .\COL_CNT_reg[1] (\COL_CNT_reg_n_0_[1] ),
        .D({KEY_CODE_AUX[2],KEY_CODE_AUX[0]}),
        .E(CE_ROW_reg_n_0),
        .\ROW[0] (ROW_IBUF[0]),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_2_out(p_2_out),
        .p_3_out(p_3_out));
  debounce_module_0 \db[1].U2 
       (.AR(RST_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D(ROW_IBUF[1]),
        .DF_reg(\db[1].U2_n_1 ),
        .E(CE_ROW_reg_n_0),
        .Q(Q),
        .Q_reg(\db[1].U2_n_2 ),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_2_out(p_2_out),
        .p_3_out(p_3_out));
  debounce_module_1 \db[2].U2 
       (.AR(RST_IBUF),
        .CE_COL_reg(CE_COL_reg_n_0),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\COL_CNT_reg[0] (\db[2].U2_n_2 ),
        .\COL_CNT_reg[0]_0 (\COL_CNT_reg_n_0_[0] ),
        .\COL_CNT_reg[1] (\db[2].U2_n_1 ),
        .\COL_CNT_reg[1]_0 (\COL_CNT_reg_n_0_[1] ),
        .D({KEY_CODE_AUX[3],KEY_CODE_AUX[1]}),
        .E(CE_ROW_reg_n_0),
        .\ROW[2] (ROW_IBUF[2]),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_2_out(p_2_out),
        .p_3_out(p_3_out));
  debounce_module_2 \db[3].U2 
       (.AR(RST_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D(ROW_IBUF[3]),
        .E(CE_ROW_reg_n_0),
        .p_0_out(p_0_out));
endmodule

module debounce_module
   (p_3_out,
    D,
    CLK_IBUF_BUFG,
    AR,
    p_0_out,
    p_1_out,
    \COL_CNT_reg[1] ,
    \COL_CNT_reg[0] ,
    p_2_out,
    E,
    \ROW[0] );
  output p_3_out;
  output [1:0]D;
  input CLK_IBUF_BUFG;
  input [0:0]AR;
  input p_0_out;
  input p_1_out;
  input \COL_CNT_reg[1] ;
  input \COL_CNT_reg[0] ;
  input p_2_out;
  input [0:0]E;
  input [0:0]\ROW[0] ;

  wire [0:0]AR;
  wire CLK_IBUF_BUFG;
  wire \COL_CNT_reg[0] ;
  wire \COL_CNT_reg[1] ;
  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]\ROW[0] ;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire q_i_i_1_n_0;
  wire [3:0]tap;

  LUT5 #(
    .INIT(32'h24800800)) 
    \KEY_CODE[0]_i_1 
       (.I0(p_3_out),
        .I1(p_0_out),
        .I2(\COL_CNT_reg[0] ),
        .I3(p_2_out),
        .I4(p_1_out),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h2820200800808080)) 
    \KEY_CODE[2]_i_1 
       (.I0(p_3_out),
        .I1(p_0_out),
        .I2(p_1_out),
        .I3(\COL_CNT_reg[1] ),
        .I4(\COL_CNT_reg[0] ),
        .I5(p_2_out),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    q_i_i_1
       (.I0(tap[1]),
        .I1(tap[0]),
        .I2(tap[2]),
        .I3(tap[3]),
        .I4(p_3_out),
        .O(q_i_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    q_i_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(q_i_i_1_n_0),
        .Q(p_3_out));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(tap[1]),
        .Q(tap[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(tap[2]),
        .Q(tap[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(tap[3]),
        .Q(tap[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\ROW[0] ),
        .Q(tap[3]));
endmodule

(* ORIG_REF_NAME = "debounce_module" *) 
module debounce_module_0
   (p_2_out,
    DF_reg,
    Q_reg,
    CLK_IBUF_BUFG,
    AR,
    p_3_out,
    p_0_out,
    p_1_out,
    Q,
    E,
    D);
  output p_2_out;
  output DF_reg;
  output Q_reg;
  input CLK_IBUF_BUFG;
  input [0:0]AR;
  input p_3_out;
  input p_0_out;
  input p_1_out;
  input Q;
  input [0:0]E;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK_IBUF_BUFG;
  wire [0:0]D;
  wire DF_reg;
  wire [0:0]E;
  wire Q;
  wire Q_reg;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire q_i_i_1__0_n_0;
  wire [3:0]tap;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    DF_i_1
       (.I0(p_2_out),
        .I1(p_3_out),
        .I2(p_0_out),
        .I3(p_1_out),
        .I4(Q),
        .O(DF_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    Q_i_1
       (.I0(p_2_out),
        .I1(p_3_out),
        .I2(p_0_out),
        .I3(p_1_out),
        .O(Q_reg));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    q_i_i_1__0
       (.I0(tap[1]),
        .I1(tap[0]),
        .I2(tap[2]),
        .I3(tap[3]),
        .I4(p_2_out),
        .O(q_i_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    q_i_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(q_i_i_1__0_n_0),
        .Q(p_2_out));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(tap[1]),
        .Q(tap[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(tap[2]),
        .Q(tap[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(tap[3]),
        .Q(tap[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D),
        .Q(tap[3]));
endmodule

(* ORIG_REF_NAME = "debounce_module" *) 
module debounce_module_1
   (p_1_out,
    \COL_CNT_reg[1] ,
    \COL_CNT_reg[0] ,
    D,
    CLK_IBUF_BUFG,
    AR,
    \COL_CNT_reg[0]_0 ,
    CE_COL_reg,
    \COL_CNT_reg[1]_0 ,
    p_0_out,
    p_3_out,
    p_2_out,
    E,
    \ROW[2] );
  output p_1_out;
  output \COL_CNT_reg[1] ;
  output \COL_CNT_reg[0] ;
  output [1:0]D;
  input CLK_IBUF_BUFG;
  input [0:0]AR;
  input \COL_CNT_reg[0]_0 ;
  input CE_COL_reg;
  input \COL_CNT_reg[1]_0 ;
  input p_0_out;
  input p_3_out;
  input p_2_out;
  input [0:0]E;
  input [0:0]\ROW[2] ;

  wire [0:0]AR;
  wire CE_COL_reg;
  wire CLK_IBUF_BUFG;
  wire \COL_CNT_reg[0] ;
  wire \COL_CNT_reg[0]_0 ;
  wire \COL_CNT_reg[1] ;
  wire \COL_CNT_reg[1]_0 ;
  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]\ROW[2] ;
  wire ROW_OK;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire q_i_i_1__1_n_0;
  wire [3:0]tap;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \COL_CNT[0]_i_1 
       (.I0(CE_COL_reg),
        .I1(ROW_OK),
        .I2(\COL_CNT_reg[0]_0 ),
        .O(\COL_CNT_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \COL_CNT[1]_i_1 
       (.I0(\COL_CNT_reg[0]_0 ),
        .I1(CE_COL_reg),
        .I2(ROW_OK),
        .I3(\COL_CNT_reg[1]_0 ),
        .O(\COL_CNT_reg[1] ));
  LUT4 #(
    .INIT(16'h8000)) 
    \COL_CNT[1]_i_2 
       (.I0(p_1_out),
        .I1(p_0_out),
        .I2(p_3_out),
        .I3(p_2_out),
        .O(ROW_OK));
  LUT6 #(
    .INIT(64'h2028084080808000)) 
    \KEY_CODE[1]_i_1 
       (.I0(p_1_out),
        .I1(p_2_out),
        .I2(p_0_out),
        .I3(\COL_CNT_reg[0]_0 ),
        .I4(\COL_CNT_reg[1]_0 ),
        .I5(p_3_out),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0EE0800080000000)) 
    \KEY_CODE[3]_i_1 
       (.I0(\COL_CNT_reg[0]_0 ),
        .I1(\COL_CNT_reg[1]_0 ),
        .I2(p_1_out),
        .I3(p_0_out),
        .I4(p_2_out),
        .I5(p_3_out),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    q_i_i_1__1
       (.I0(tap[1]),
        .I1(tap[0]),
        .I2(tap[2]),
        .I3(tap[3]),
        .I4(p_1_out),
        .O(q_i_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    q_i_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(q_i_i_1__1_n_0),
        .Q(p_1_out));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(tap[1]),
        .Q(tap[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(tap[2]),
        .Q(tap[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(tap[3]),
        .Q(tap[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\ROW[2] ),
        .Q(tap[3]));
endmodule

(* ORIG_REF_NAME = "debounce_module" *) 
module debounce_module_2
   (p_0_out,
    CLK_IBUF_BUFG,
    AR,
    E,
    D);
  output p_0_out;
  input CLK_IBUF_BUFG;
  input [0:0]AR;
  input [0:0]E;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK_IBUF_BUFG;
  wire [0:0]D;
  wire [0:0]E;
  wire p_0_out;
  wire q_i_i_1__2_n_0;
  wire [3:0]tap;

  LUT5 #(
    .INIT(32'hFFFE8000)) 
    q_i_i_1__2
       (.I0(tap[1]),
        .I1(tap[0]),
        .I2(tap[2]),
        .I3(tap[3]),
        .I4(p_0_out),
        .O(q_i_i_1__2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    q_i_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(q_i_i_1__2_n_0),
        .Q(p_0_out));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(tap[1]),
        .Q(tap[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(tap[2]),
        .Q(tap[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(tap[3]),
        .Q(tap[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D),
        .Q(tap[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
