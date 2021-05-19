// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed May 19 17:31:14 2021
// Host        : LAPTOP-NU8BRVH7 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/PRACTICA_LIBRE/modelado_de_sistemas_computacionales/PRAC_LIBRE/PRAC_LIBRE.sim/sim_1/impl/timing/xsim/top_system_tb_time_impl.v
// Design      : top_system
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module KYPD_controller
   (KEY_CODE_OK,
    COL_OBUF,
    Q,
    CLK_IBUF_BUFG,
    RST_IBUF,
    ROW_IBUF);
  output KEY_CODE_OK;
  output [3:0]COL_OBUF;
  output [3:0]Q;
  input CLK_IBUF_BUFG;
  input RST_IBUF;
  input [3:0]ROW_IBUF;

  wire CE_COL_i_1_n_0;
  wire CE_COL_reg_n_0;
  wire CE_ROW;
  wire CE_ROW_reg_n_0;
  wire CLK_IBUF_BUFG;
  wire \COL_CNT[0]_i_1_n_0 ;
  wire \COL_CNT[1]_i_1_n_0 ;
  wire \COL_CNT_reg_n_0_[0] ;
  wire \COL_CNT_reg_n_0_[1] ;
  wire [3:0]COL_OBUF;
  wire [9:0]CONT;
  wire [19:0]CONT2;
  wire \CONT2[19]_i_2_n_0 ;
  wire \CONT2[19]_i_3_n_0 ;
  wire \CONT2[19]_i_4_n_0 ;
  wire \CONT2[19]_i_5_n_0 ;
  wire \CONT2[19]_i_6_n_0 ;
  wire [19:0]CONT2_1;
  wire \CONT2_reg[12]_i_2_n_0 ;
  wire \CONT2_reg[16]_i_2_n_0 ;
  wire \CONT2_reg[4]_i_2_n_0 ;
  wire \CONT2_reg[8]_i_2_n_0 ;
  wire \CONT[2]_i_2_n_0 ;
  wire \CONT[2]_i_3_n_0 ;
  wire \CONT[9]_i_2_n_0 ;
  wire [9:0]CONT_2;
  wire DF;
  wire [3:0]KEY_CODE_AUX;
  wire KEY_CODE_OK;
  wire [3:0]Q;
  wire Q_0;
  wire [3:0]ROW_IBUF;
  wire ROW_OK__0;
  wire RST_IBUF;
  wire [19:1]data0;
  wire \db[1].U2_n_1 ;
  wire \db[1].U2_n_2 ;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire [2:0]\NLW_CONT2_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_CONT2_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_CONT2_reg[19]_i_7_CO_UNCONNECTED ;
  wire [3:3]\NLW_CONT2_reg[19]_i_7_O_UNCONNECTED ;
  wire [2:0]\NLW_CONT2_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_CONT2_reg[8]_i_2_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00004000)) 
    CE_COL_i_1
       (.I0(CONT[0]),
        .I1(CE_ROW_reg_n_0),
        .I2(CONT[1]),
        .I3(CONT[2]),
        .I4(\CONT[2]_i_2_n_0 ),
        .O(CE_COL_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    CE_COL_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CE_COL_i_1_n_0),
        .Q(CE_COL_reg_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    CE_ROW_i_1
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .O(CE_ROW));
  FDCE #(
    .INIT(1'b0)) 
    CE_ROW_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CE_ROW),
        .Q(CE_ROW_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \COL_CNT[0]_i_1 
       (.I0(ROW_OK__0),
        .I1(CE_COL_reg_n_0),
        .I2(\COL_CNT_reg_n_0_[0] ),
        .O(\COL_CNT[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \COL_CNT[1]_i_1 
       (.I0(\COL_CNT_reg_n_0_[0] ),
        .I1(ROW_OK__0),
        .I2(CE_COL_reg_n_0),
        .I3(\COL_CNT_reg_n_0_[1] ),
        .O(\COL_CNT[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \COL_CNT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\COL_CNT[0]_i_1_n_0 ),
        .Q(\COL_CNT_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \COL_CNT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\COL_CNT[1]_i_1_n_0 ),
        .Q(\COL_CNT_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \COL_OBUF[0]_inst_i_1 
       (.I0(\COL_CNT_reg_n_0_[0] ),
        .I1(\COL_CNT_reg_n_0_[1] ),
        .O(COL_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \COL_OBUF[1]_inst_i_1 
       (.I0(\COL_CNT_reg_n_0_[1] ),
        .I1(\COL_CNT_reg_n_0_[0] ),
        .O(COL_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \COL_OBUF[2]_inst_i_1 
       (.I0(\COL_CNT_reg_n_0_[0] ),
        .I1(\COL_CNT_reg_n_0_[1] ),
        .O(COL_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \COL_OBUF[3]_inst_i_1 
       (.I0(\COL_CNT_reg_n_0_[0] ),
        .I1(\COL_CNT_reg_n_0_[1] ),
        .O(COL_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CONT2[0]_i_1 
       (.I0(CONT2[0]),
        .O(CONT2_1[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[10]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[10]),
        .O(CONT2_1[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[11]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[11]),
        .O(CONT2_1[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[12]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[12]),
        .O(CONT2_1[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[13]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[13]),
        .O(CONT2_1[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[14]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[14]),
        .O(CONT2_1[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[15]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[15]),
        .O(CONT2_1[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[16]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[16]),
        .O(CONT2_1[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[17]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[17]),
        .O(CONT2_1[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[18]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[18]),
        .O(CONT2_1[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[19]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[19]),
        .O(CONT2_1[19]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \CONT2[19]_i_2 
       (.I0(CONT2[0]),
        .I1(CONT2[1]),
        .I2(CONT2[2]),
        .I3(CONT2[3]),
        .O(\CONT2[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \CONT2[19]_i_3 
       (.I0(CONT2[13]),
        .I1(CONT2[12]),
        .I2(CONT2[15]),
        .I3(CONT2[14]),
        .O(\CONT2[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \CONT2[19]_i_4 
       (.I0(CONT2[17]),
        .I1(CONT2[16]),
        .I2(CONT2[19]),
        .I3(CONT2[18]),
        .O(\CONT2[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \CONT2[19]_i_5 
       (.I0(CONT2[9]),
        .I1(CONT2[8]),
        .I2(CONT2[11]),
        .I3(CONT2[10]),
        .O(\CONT2[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \CONT2[19]_i_6 
       (.I0(CONT2[5]),
        .I1(CONT2[4]),
        .I2(CONT2[6]),
        .I3(CONT2[7]),
        .O(\CONT2[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[1]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[1]),
        .O(CONT2_1[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[2]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[2]),
        .O(CONT2_1[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[3]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[3]),
        .O(CONT2_1[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[4]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[4]),
        .O(CONT2_1[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[5]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[5]),
        .O(CONT2_1[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[6]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[6]),
        .O(CONT2_1[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[7]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[7]),
        .O(CONT2_1[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[8]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[8]),
        .O(CONT2_1[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \CONT2[9]_i_1 
       (.I0(\CONT2[19]_i_2_n_0 ),
        .I1(\CONT2[19]_i_3_n_0 ),
        .I2(\CONT2[19]_i_4_n_0 ),
        .I3(\CONT2[19]_i_5_n_0 ),
        .I4(\CONT2[19]_i_6_n_0 ),
        .I5(data0[9]),
        .O(CONT2_1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[0]),
        .Q(CONT2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[10]),
        .Q(CONT2[10]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[11]),
        .Q(CONT2[11]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[12]),
        .Q(CONT2[12]));
  CARRY4 \CONT2_reg[12]_i_2 
       (.CI(\CONT2_reg[8]_i_2_n_0 ),
        .CO({\CONT2_reg[12]_i_2_n_0 ,\NLW_CONT2_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(CONT2[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[13]),
        .Q(CONT2[13]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[14]),
        .Q(CONT2[14]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[15]),
        .Q(CONT2[15]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[16]),
        .Q(CONT2[16]));
  CARRY4 \CONT2_reg[16]_i_2 
       (.CI(\CONT2_reg[12]_i_2_n_0 ),
        .CO({\CONT2_reg[16]_i_2_n_0 ,\NLW_CONT2_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(CONT2[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[17]),
        .Q(CONT2[17]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[18]),
        .Q(CONT2[18]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[19]),
        .Q(CONT2[19]));
  CARRY4 \CONT2_reg[19]_i_7 
       (.CI(\CONT2_reg[16]_i_2_n_0 ),
        .CO(\NLW_CONT2_reg[19]_i_7_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_CONT2_reg[19]_i_7_O_UNCONNECTED [3],data0[19:17]}),
        .S({1'b0,CONT2[19:17]}));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[1]),
        .Q(CONT2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[2]),
        .Q(CONT2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[3]),
        .Q(CONT2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[4]),
        .Q(CONT2[4]));
  CARRY4 \CONT2_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\CONT2_reg[4]_i_2_n_0 ,\NLW_CONT2_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(CONT2[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(CONT2[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[5]),
        .Q(CONT2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[6]),
        .Q(CONT2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[7]),
        .Q(CONT2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[8]),
        .Q(CONT2[8]));
  CARRY4 \CONT2_reg[8]_i_2 
       (.CI(\CONT2_reg[4]_i_2_n_0 ),
        .CO({\CONT2_reg[8]_i_2_n_0 ,\NLW_CONT2_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(CONT2[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT2_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CONT2_1[9]),
        .Q(CONT2[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00F7)) 
    \CONT[0]_i_1 
       (.I0(CONT[1]),
        .I1(CONT[2]),
        .I2(\CONT[2]_i_2_n_0 ),
        .I3(CONT[0]),
        .O(CONT_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \CONT[1]_i_1 
       (.I0(\CONT[2]_i_2_n_0 ),
        .I1(CONT[2]),
        .I2(CONT[1]),
        .I3(CONT[0]),
        .O(CONT_2[1]));
  LUT4 #(
    .INIT(16'h4FA0)) 
    \CONT[2]_i_1 
       (.I0(CONT[0]),
        .I1(\CONT[2]_i_2_n_0 ),
        .I2(CONT[1]),
        .I3(CONT[2]),
        .O(CONT_2[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \CONT[2]_i_2 
       (.I0(\CONT[2]_i_3_n_0 ),
        .I1(CONT[3]),
        .I2(CONT[8]),
        .I3(CONT[9]),
        .O(\CONT[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \CONT[2]_i_3 
       (.I0(CONT[5]),
        .I1(CONT[4]),
        .I2(CONT[7]),
        .I3(CONT[6]),
        .O(\CONT[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \CONT[3]_i_1 
       (.I0(CONT[0]),
        .I1(CONT[1]),
        .I2(CONT[2]),
        .I3(CONT[3]),
        .O(CONT_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \CONT[4]_i_1 
       (.I0(CONT[3]),
        .I1(CONT[2]),
        .I2(CONT[1]),
        .I3(CONT[0]),
        .I4(CONT[4]),
        .O(CONT_2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \CONT[5]_i_1 
       (.I0(CONT[4]),
        .I1(CONT[0]),
        .I2(CONT[1]),
        .I3(CONT[2]),
        .I4(CONT[3]),
        .I5(CONT[5]),
        .O(CONT_2[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \CONT[6]_i_1 
       (.I0(\CONT[9]_i_2_n_0 ),
        .I1(CONT[6]),
        .O(CONT_2[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \CONT[7]_i_1 
       (.I0(CONT[6]),
        .I1(\CONT[9]_i_2_n_0 ),
        .I2(CONT[7]),
        .O(CONT_2[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \CONT[8]_i_1 
       (.I0(CONT[7]),
        .I1(\CONT[9]_i_2_n_0 ),
        .I2(CONT[6]),
        .I3(CONT[8]),
        .O(CONT_2[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \CONT[9]_i_1 
       (.I0(CONT[8]),
        .I1(CONT[6]),
        .I2(\CONT[9]_i_2_n_0 ),
        .I3(CONT[7]),
        .I4(CONT[9]),
        .O(CONT_2[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \CONT[9]_i_2 
       (.I0(CONT[4]),
        .I1(CONT[0]),
        .I2(CONT[1]),
        .I3(CONT[2]),
        .I4(CONT[3]),
        .I5(CONT[5]),
        .O(\CONT[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT_2[0]),
        .Q(CONT[0]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT_2[1]),
        .Q(CONT[1]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT_2[2]),
        .Q(CONT[2]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT_2[3]),
        .Q(CONT[3]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT_2[4]),
        .Q(CONT[4]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT_2[5]),
        .Q(CONT[5]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT_2[6]),
        .Q(CONT[6]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT_2[7]),
        .Q(CONT[7]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT_2[8]),
        .Q(CONT[8]));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_ROW_reg_n_0),
        .CLR(RST_IBUF),
        .D(CONT_2[9]),
        .Q(CONT[9]));
  FDCE #(
    .INIT(1'b0)) 
    DF_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\db[1].U2_n_1 ),
        .Q(DF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h24800800)) 
    \KEY_CODE[0]_i_1 
       (.I0(p_3_out),
        .I1(p_0_out),
        .I2(\COL_CNT_reg_n_0_[0] ),
        .I3(p_2_out),
        .I4(p_1_out),
        .O(KEY_CODE_AUX[0]));
  LUT6 #(
    .INIT(64'h2008284080808000)) 
    \KEY_CODE[1]_i_1 
       (.I0(p_1_out),
        .I1(p_2_out),
        .I2(p_0_out),
        .I3(\COL_CNT_reg_n_0_[1] ),
        .I4(\COL_CNT_reg_n_0_[0] ),
        .I5(p_3_out),
        .O(KEY_CODE_AUX[1]));
  LUT6 #(
    .INIT(64'h2820200800808080)) 
    \KEY_CODE[2]_i_1 
       (.I0(p_3_out),
        .I1(p_0_out),
        .I2(p_1_out),
        .I3(\COL_CNT_reg_n_0_[0] ),
        .I4(\COL_CNT_reg_n_0_[1] ),
        .I5(p_2_out),
        .O(KEY_CODE_AUX[2]));
  LUT6 #(
    .INIT(64'h0EE0800080000000)) 
    \KEY_CODE[3]_i_1 
       (.I0(\COL_CNT_reg_n_0_[0] ),
        .I1(\COL_CNT_reg_n_0_[1] ),
        .I2(p_1_out),
        .I3(p_0_out),
        .I4(p_2_out),
        .I5(p_3_out),
        .O(KEY_CODE_AUX[3]));
  FDCE #(
    .INIT(1'b0)) 
    KEY_CODE_OK_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(DF),
        .Q(KEY_CODE_OK));
  FDCE #(
    .INIT(1'b0)) 
    \KEY_CODE_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(DF),
        .CLR(RST_IBUF),
        .D(KEY_CODE_AUX[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \KEY_CODE_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(DF),
        .CLR(RST_IBUF),
        .D(KEY_CODE_AUX[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \KEY_CODE_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(DF),
        .CLR(RST_IBUF),
        .D(KEY_CODE_AUX[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \KEY_CODE_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(DF),
        .CLR(RST_IBUF),
        .D(KEY_CODE_AUX[3]),
        .Q(Q[3]));
  FDPE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\db[1].U2_n_2 ),
        .PRE(RST_IBUF),
        .Q(Q_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    ROW_OK
       (.I0(p_0_out),
        .I1(p_1_out),
        .I2(p_3_out),
        .I3(p_2_out),
        .O(ROW_OK__0));
  debounce_module \db[0].U2 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .E(CE_ROW_reg_n_0),
        .ROW_IBUF(ROW_IBUF[0]),
        .RST_IBUF(RST_IBUF),
        .p_3_out(p_3_out));
  debounce_module_0 \db[1].U2 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .DF_reg(\db[1].U2_n_1 ),
        .E(CE_ROW_reg_n_0),
        .Q_0(Q_0),
        .Q_reg(\db[1].U2_n_2 ),
        .ROW_IBUF(ROW_IBUF[1]),
        .RST_IBUF(RST_IBUF),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_2_out(p_2_out),
        .p_3_out(p_3_out));
  debounce_module_1 \db[2].U2 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .E(CE_ROW_reg_n_0),
        .ROW_IBUF(ROW_IBUF[2]),
        .RST_IBUF(RST_IBUF),
        .p_1_out(p_1_out));
  debounce_module_2 \db[3].U2 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .E(CE_ROW_reg_n_0),
        .ROW_IBUF(ROW_IBUF[3]),
        .RST_IBUF(RST_IBUF),
        .p_0_out(p_0_out));
endmodule

module debounce_module
   (p_3_out,
    CLK_IBUF_BUFG,
    RST_IBUF,
    E,
    ROW_IBUF);
  output p_3_out;
  input CLK_IBUF_BUFG;
  input RST_IBUF;
  input [0:0]E;
  input [0:0]ROW_IBUF;

  wire CLK_IBUF_BUFG;
  wire [0:0]E;
  wire [0:0]ROW_IBUF;
  wire RST_IBUF;
  wire p_3_out;
  wire q_i_i_1_n_0;
  wire [3:0]tap;

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
        .CLR(RST_IBUF),
        .D(q_i_i_1_n_0),
        .Q(p_3_out));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(tap[1]),
        .Q(tap[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(tap[2]),
        .Q(tap[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(tap[3]),
        .Q(tap[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(ROW_IBUF),
        .Q(tap[3]));
endmodule

(* ORIG_REF_NAME = "debounce_module" *) 
module debounce_module_0
   (p_2_out,
    DF_reg,
    Q_reg,
    CLK_IBUF_BUFG,
    RST_IBUF,
    Q_0,
    p_3_out,
    p_1_out,
    p_0_out,
    E,
    ROW_IBUF);
  output p_2_out;
  output DF_reg;
  output Q_reg;
  input CLK_IBUF_BUFG;
  input RST_IBUF;
  input Q_0;
  input p_3_out;
  input p_1_out;
  input p_0_out;
  input [0:0]E;
  input [0:0]ROW_IBUF;

  wire CLK_IBUF_BUFG;
  wire DF_reg;
  wire [0:0]E;
  wire Q_0;
  wire Q_reg;
  wire [0:0]ROW_IBUF;
  wire RST_IBUF;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire q_i_i_1__0_n_0;
  wire [3:0]tap;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h15555555)) 
    DF_i_1
       (.I0(Q_0),
        .I1(p_2_out),
        .I2(p_3_out),
        .I3(p_1_out),
        .I4(p_0_out),
        .O(DF_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    Q_i_1
       (.I0(p_2_out),
        .I1(p_3_out),
        .I2(p_1_out),
        .I3(p_0_out),
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
        .CLR(RST_IBUF),
        .D(q_i_i_1__0_n_0),
        .Q(p_2_out));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(tap[1]),
        .Q(tap[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(tap[2]),
        .Q(tap[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(tap[3]),
        .Q(tap[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(ROW_IBUF),
        .Q(tap[3]));
endmodule

(* ORIG_REF_NAME = "debounce_module" *) 
module debounce_module_1
   (p_1_out,
    CLK_IBUF_BUFG,
    RST_IBUF,
    E,
    ROW_IBUF);
  output p_1_out;
  input CLK_IBUF_BUFG;
  input RST_IBUF;
  input [0:0]E;
  input [0:0]ROW_IBUF;

  wire CLK_IBUF_BUFG;
  wire [0:0]E;
  wire [0:0]ROW_IBUF;
  wire RST_IBUF;
  wire p_1_out;
  wire q_i_i_1__1_n_0;
  wire [3:0]tap;

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
        .CLR(RST_IBUF),
        .D(q_i_i_1__1_n_0),
        .Q(p_1_out));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(tap[1]),
        .Q(tap[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(tap[2]),
        .Q(tap[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(tap[3]),
        .Q(tap[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(ROW_IBUF),
        .Q(tap[3]));
endmodule

(* ORIG_REF_NAME = "debounce_module" *) 
module debounce_module_2
   (p_0_out,
    CLK_IBUF_BUFG,
    RST_IBUF,
    E,
    ROW_IBUF);
  output p_0_out;
  input CLK_IBUF_BUFG;
  input RST_IBUF;
  input [0:0]E;
  input [0:0]ROW_IBUF;

  wire CLK_IBUF_BUFG;
  wire [0:0]E;
  wire [0:0]ROW_IBUF;
  wire RST_IBUF;
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
        .CLR(RST_IBUF),
        .D(q_i_i_1__2_n_0),
        .Q(p_0_out));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(tap[1]),
        .Q(tap[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(tap[2]),
        .Q(tap[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(tap[3]),
        .Q(tap[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tap_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(ROW_IBUF),
        .Q(tap[3]));
endmodule

module mangm_KYPD
   (DATA_OK,
    Q,
    AND_30_OBUF,
    SEG_AG_OBUF,
    CLK_IBUF_BUFG,
    RST_IBUF,
    KEY_CODE_OK,
    D);
  output DATA_OK;
  output [7:0]Q;
  output [3:0]AND_30_OBUF;
  output [6:0]SEG_AG_OBUF;
  input CLK_IBUF_BUFG;
  input RST_IBUF;
  input KEY_CODE_OK;
  input [3:0]D;

  wire [3:0]AND_30_OBUF;
  wire CLK_IBUF_BUFG;
  wire [3:0]D;
  wire DATA_OK;
  wire DATA_OK_i_1_n_0;
  wire KEY_CODE_OK;
  wire [7:0]Q;
  wire RST_IBUF;
  wire [6:0]SEG_AG_OBUF;
  wire [19:0]cnt_1ms;
  wire \cnt_1ms[19]_i_2_n_0 ;
  wire \cnt_1ms[19]_i_4_n_0 ;
  wire \cnt_1ms[19]_i_5_n_0 ;
  wire \cnt_1ms[19]_i_6_n_0 ;
  wire \cnt_1ms[19]_i_7_n_0 ;
  wire \cnt_1ms[19]_i_8_n_0 ;
  wire [19:0]cnt_1ms_0;
  wire \cnt_1ms_reg[12]_i_2_n_0 ;
  wire \cnt_1ms_reg[12]_i_2_n_4 ;
  wire \cnt_1ms_reg[12]_i_2_n_5 ;
  wire \cnt_1ms_reg[12]_i_2_n_6 ;
  wire \cnt_1ms_reg[12]_i_2_n_7 ;
  wire \cnt_1ms_reg[16]_i_2_n_0 ;
  wire \cnt_1ms_reg[16]_i_2_n_4 ;
  wire \cnt_1ms_reg[16]_i_2_n_5 ;
  wire \cnt_1ms_reg[16]_i_2_n_6 ;
  wire \cnt_1ms_reg[16]_i_2_n_7 ;
  wire \cnt_1ms_reg[19]_i_3_n_5 ;
  wire \cnt_1ms_reg[19]_i_3_n_6 ;
  wire \cnt_1ms_reg[19]_i_3_n_7 ;
  wire \cnt_1ms_reg[4]_i_2_n_0 ;
  wire \cnt_1ms_reg[4]_i_2_n_4 ;
  wire \cnt_1ms_reg[4]_i_2_n_5 ;
  wire \cnt_1ms_reg[4]_i_2_n_6 ;
  wire \cnt_1ms_reg[4]_i_2_n_7 ;
  wire \cnt_1ms_reg[8]_i_2_n_0 ;
  wire \cnt_1ms_reg[8]_i_2_n_4 ;
  wire \cnt_1ms_reg[8]_i_2_n_5 ;
  wire \cnt_1ms_reg[8]_i_2_n_6 ;
  wire \cnt_1ms_reg[8]_i_2_n_7 ;
  wire \data2_aux[7]_i_1_n_0 ;
  wire \data2_aux_reg_n_0_[0] ;
  wire \data2_aux_reg_n_0_[1] ;
  wire \data2_aux_reg_n_0_[2] ;
  wire \data2_aux_reg_n_0_[3] ;
  wire \data2_aux_reg_n_0_[4] ;
  wire \data2_aux_reg_n_0_[5] ;
  wire \data2_aux_reg_n_0_[6] ;
  wire \data2_aux_reg_n_0_[7] ;
  wire [7:0]data_aux;
  wire data_ok_aux;
  wire data_ok_aux_i_1_n_0;
  wire [3:0]dato;
  wire [1:0]estado_act;
  wire \estado_act[0]_i_1_n_0 ;
  wire \estado_act[1]_i_1_n_0 ;
  wire \sel_dsply[0]_i_1_n_0 ;
  wire \sel_dsply[1]_i_1_n_0 ;
  wire \sel_dsply_reg_n_0_[0] ;
  wire \sel_dsply_reg_n_0_[1] ;
  wire [2:0]\NLW_cnt_1ms_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_1ms_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_1ms_reg[19]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_1ms_reg[19]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_cnt_1ms_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_1ms_reg[8]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \AND_30_OBUF[0]_inst_i_1 
       (.I0(\sel_dsply_reg_n_0_[1] ),
        .I1(\sel_dsply_reg_n_0_[0] ),
        .O(AND_30_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AND_30_OBUF[1]_inst_i_1 
       (.I0(\sel_dsply_reg_n_0_[1] ),
        .I1(\sel_dsply_reg_n_0_[0] ),
        .O(AND_30_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AND_30_OBUF[2]_inst_i_1 
       (.I0(\sel_dsply_reg_n_0_[0] ),
        .I1(\sel_dsply_reg_n_0_[1] ),
        .O(AND_30_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \AND_30_OBUF[3]_inst_i_1 
       (.I0(\sel_dsply_reg_n_0_[1] ),
        .I1(\sel_dsply_reg_n_0_[0] ),
        .O(AND_30_OBUF[3]));
  LUT2 #(
    .INIT(4'h2)) 
    DATA_OK_i_1
       (.I0(estado_act[1]),
        .I1(estado_act[0]),
        .O(DATA_OK_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    DATA_OK_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(DATA_OK_i_1_n_0),
        .Q(DATA_OK));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_OK_i_1_n_0),
        .CLR(RST_IBUF),
        .D(data_aux[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_OK_i_1_n_0),
        .CLR(RST_IBUF),
        .D(data_aux[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_OK_i_1_n_0),
        .CLR(RST_IBUF),
        .D(data_aux[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_OK_i_1_n_0),
        .CLR(RST_IBUF),
        .D(data_aux[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_OK_i_1_n_0),
        .CLR(RST_IBUF),
        .D(data_aux[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_OK_i_1_n_0),
        .CLR(RST_IBUF),
        .D(data_aux[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_OK_i_1_n_0),
        .CLR(RST_IBUF),
        .D(data_aux[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_OK_i_1_n_0),
        .CLR(RST_IBUF),
        .D(data_aux[7]),
        .Q(Q[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \SEG_AG_OBUF[0]_inst_i_1 
       (.I0(dato[3]),
        .I1(dato[2]),
        .I2(dato[0]),
        .I3(dato[1]),
        .O(SEG_AG_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \SEG_AG_OBUF[1]_inst_i_1 
       (.I0(dato[3]),
        .I1(dato[2]),
        .I2(dato[1]),
        .I3(dato[0]),
        .O(SEG_AG_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \SEG_AG_OBUF[2]_inst_i_1 
       (.I0(dato[3]),
        .I1(dato[0]),
        .I2(dato[1]),
        .I3(dato[2]),
        .O(SEG_AG_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hC234)) 
    \SEG_AG_OBUF[3]_inst_i_1 
       (.I0(dato[3]),
        .I1(dato[2]),
        .I2(dato[0]),
        .I3(dato[1]),
        .O(SEG_AG_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \SEG_AG_OBUF[4]_inst_i_1 
       (.I0(dato[3]),
        .I1(dato[1]),
        .I2(dato[2]),
        .I3(dato[0]),
        .O(SEG_AG_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \SEG_AG_OBUF[5]_inst_i_1 
       (.I0(dato[3]),
        .I1(dato[2]),
        .I2(dato[0]),
        .I3(dato[1]),
        .O(SEG_AG_OBUF[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \SEG_AG_OBUF[6]_inst_i_1 
       (.I0(dato[3]),
        .I1(dato[0]),
        .I2(dato[2]),
        .I3(dato[1]),
        .O(SEG_AG_OBUF[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \SEG_AG_OBUF[6]_inst_i_2 
       (.I0(data_aux[7]),
        .I1(data_aux[3]),
        .I2(\data2_aux_reg_n_0_[7] ),
        .I3(\sel_dsply_reg_n_0_[1] ),
        .I4(\sel_dsply_reg_n_0_[0] ),
        .I5(\data2_aux_reg_n_0_[3] ),
        .O(dato[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \SEG_AG_OBUF[6]_inst_i_3 
       (.I0(data_aux[4]),
        .I1(data_aux[0]),
        .I2(\data2_aux_reg_n_0_[4] ),
        .I3(\sel_dsply_reg_n_0_[1] ),
        .I4(\sel_dsply_reg_n_0_[0] ),
        .I5(\data2_aux_reg_n_0_[0] ),
        .O(dato[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \SEG_AG_OBUF[6]_inst_i_4 
       (.I0(data_aux[6]),
        .I1(data_aux[2]),
        .I2(\data2_aux_reg_n_0_[6] ),
        .I3(\sel_dsply_reg_n_0_[1] ),
        .I4(\sel_dsply_reg_n_0_[0] ),
        .I5(\data2_aux_reg_n_0_[2] ),
        .O(dato[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \SEG_AG_OBUF[6]_inst_i_5 
       (.I0(data_aux[5]),
        .I1(data_aux[1]),
        .I2(\data2_aux_reg_n_0_[5] ),
        .I3(\sel_dsply_reg_n_0_[1] ),
        .I4(\sel_dsply_reg_n_0_[0] ),
        .I5(\data2_aux_reg_n_0_[1] ),
        .O(dato[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_1ms[0]_i_1 
       (.I0(cnt_1ms[0]),
        .O(cnt_1ms_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[10]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[12]_i_2_n_6 ),
        .O(cnt_1ms_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[11]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[12]_i_2_n_5 ),
        .O(cnt_1ms_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[12]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[12]_i_2_n_4 ),
        .O(cnt_1ms_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[13]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[16]_i_2_n_7 ),
        .O(cnt_1ms_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[14]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[16]_i_2_n_6 ),
        .O(cnt_1ms_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[15]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[16]_i_2_n_5 ),
        .O(cnt_1ms_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[16]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[16]_i_2_n_4 ),
        .O(cnt_1ms_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[17]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[19]_i_3_n_7 ),
        .O(cnt_1ms_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[18]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[19]_i_3_n_6 ),
        .O(cnt_1ms_0[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[19]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[19]_i_3_n_5 ),
        .O(cnt_1ms_0[19]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt_1ms[19]_i_2 
       (.I0(\cnt_1ms[19]_i_4_n_0 ),
        .I1(\cnt_1ms[19]_i_5_n_0 ),
        .I2(\cnt_1ms[19]_i_6_n_0 ),
        .I3(\cnt_1ms[19]_i_7_n_0 ),
        .I4(\cnt_1ms[19]_i_8_n_0 ),
        .O(\cnt_1ms[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt_1ms[19]_i_4 
       (.I0(cnt_1ms[1]),
        .I1(cnt_1ms[0]),
        .I2(cnt_1ms[3]),
        .I3(cnt_1ms[2]),
        .O(\cnt_1ms[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_1ms[19]_i_5 
       (.I0(cnt_1ms[13]),
        .I1(cnt_1ms[12]),
        .I2(cnt_1ms[15]),
        .I3(cnt_1ms[14]),
        .O(\cnt_1ms[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_1ms[19]_i_6 
       (.I0(cnt_1ms[17]),
        .I1(cnt_1ms[16]),
        .I2(cnt_1ms[19]),
        .I3(cnt_1ms[18]),
        .O(\cnt_1ms[19]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \cnt_1ms[19]_i_7 
       (.I0(cnt_1ms[8]),
        .I1(cnt_1ms[9]),
        .I2(cnt_1ms[11]),
        .I3(cnt_1ms[10]),
        .O(\cnt_1ms[19]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \cnt_1ms[19]_i_8 
       (.I0(cnt_1ms[5]),
        .I1(cnt_1ms[4]),
        .I2(cnt_1ms[7]),
        .I3(cnt_1ms[6]),
        .O(\cnt_1ms[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[1]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[4]_i_2_n_7 ),
        .O(cnt_1ms_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[2]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[4]_i_2_n_6 ),
        .O(cnt_1ms_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[3]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[4]_i_2_n_5 ),
        .O(cnt_1ms_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[4]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[4]_i_2_n_4 ),
        .O(cnt_1ms_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[5]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[8]_i_2_n_7 ),
        .O(cnt_1ms_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[6]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[8]_i_2_n_6 ),
        .O(cnt_1ms_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[7]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[8]_i_2_n_5 ),
        .O(cnt_1ms_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[8]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[8]_i_2_n_4 ),
        .O(cnt_1ms_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_1ms[9]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\cnt_1ms_reg[12]_i_2_n_7 ),
        .O(cnt_1ms_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[0]),
        .Q(cnt_1ms[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[10]),
        .Q(cnt_1ms[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[11]),
        .Q(cnt_1ms[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[12]),
        .Q(cnt_1ms[12]));
  CARRY4 \cnt_1ms_reg[12]_i_2 
       (.CI(\cnt_1ms_reg[8]_i_2_n_0 ),
        .CO({\cnt_1ms_reg[12]_i_2_n_0 ,\NLW_cnt_1ms_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1ms_reg[12]_i_2_n_4 ,\cnt_1ms_reg[12]_i_2_n_5 ,\cnt_1ms_reg[12]_i_2_n_6 ,\cnt_1ms_reg[12]_i_2_n_7 }),
        .S(cnt_1ms[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[13]),
        .Q(cnt_1ms[13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[14]),
        .Q(cnt_1ms[14]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[15]),
        .Q(cnt_1ms[15]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[16]),
        .Q(cnt_1ms[16]));
  CARRY4 \cnt_1ms_reg[16]_i_2 
       (.CI(\cnt_1ms_reg[12]_i_2_n_0 ),
        .CO({\cnt_1ms_reg[16]_i_2_n_0 ,\NLW_cnt_1ms_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1ms_reg[16]_i_2_n_4 ,\cnt_1ms_reg[16]_i_2_n_5 ,\cnt_1ms_reg[16]_i_2_n_6 ,\cnt_1ms_reg[16]_i_2_n_7 }),
        .S(cnt_1ms[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[17]),
        .Q(cnt_1ms[17]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[18]),
        .Q(cnt_1ms[18]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[19]),
        .Q(cnt_1ms[19]));
  CARRY4 \cnt_1ms_reg[19]_i_3 
       (.CI(\cnt_1ms_reg[16]_i_2_n_0 ),
        .CO(\NLW_cnt_1ms_reg[19]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_1ms_reg[19]_i_3_O_UNCONNECTED [3],\cnt_1ms_reg[19]_i_3_n_5 ,\cnt_1ms_reg[19]_i_3_n_6 ,\cnt_1ms_reg[19]_i_3_n_7 }),
        .S({1'b0,cnt_1ms[19:17]}));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[1]),
        .Q(cnt_1ms[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[2]),
        .Q(cnt_1ms[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[3]),
        .Q(cnt_1ms[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[4]),
        .Q(cnt_1ms[4]));
  CARRY4 \cnt_1ms_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_1ms_reg[4]_i_2_n_0 ,\NLW_cnt_1ms_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(cnt_1ms[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1ms_reg[4]_i_2_n_4 ,\cnt_1ms_reg[4]_i_2_n_5 ,\cnt_1ms_reg[4]_i_2_n_6 ,\cnt_1ms_reg[4]_i_2_n_7 }),
        .S(cnt_1ms[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[5]),
        .Q(cnt_1ms[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[6]),
        .Q(cnt_1ms[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[7]),
        .Q(cnt_1ms[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[8]),
        .Q(cnt_1ms[8]));
  CARRY4 \cnt_1ms_reg[8]_i_2 
       (.CI(\cnt_1ms_reg[4]_i_2_n_0 ),
        .CO({\cnt_1ms_reg[8]_i_2_n_0 ,\NLW_cnt_1ms_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1ms_reg[8]_i_2_n_4 ,\cnt_1ms_reg[8]_i_2_n_5 ,\cnt_1ms_reg[8]_i_2_n_6 ,\cnt_1ms_reg[8]_i_2_n_7 }),
        .S(cnt_1ms[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cnt_1ms_0[9]),
        .Q(cnt_1ms[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \data2_aux[7]_i_1 
       (.I0(data_ok_aux),
        .I1(KEY_CODE_OK),
        .O(\data2_aux[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data2_aux_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\data2_aux[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(data_aux[0]),
        .Q(\data2_aux_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \data2_aux_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\data2_aux[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(data_aux[1]),
        .Q(\data2_aux_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \data2_aux_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\data2_aux[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(data_aux[2]),
        .Q(\data2_aux_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \data2_aux_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\data2_aux[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(data_aux[3]),
        .Q(\data2_aux_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \data2_aux_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\data2_aux[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(data_aux[4]),
        .Q(\data2_aux_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \data2_aux_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\data2_aux[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(data_aux[5]),
        .Q(\data2_aux_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \data2_aux_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\data2_aux[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(data_aux[6]),
        .Q(\data2_aux_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \data2_aux_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\data2_aux[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(data_aux[7]),
        .Q(\data2_aux_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_aux_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_CODE_OK),
        .CLR(RST_IBUF),
        .D(D[0]),
        .Q(data_aux[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_aux_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_CODE_OK),
        .CLR(RST_IBUF),
        .D(D[1]),
        .Q(data_aux[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_aux_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_CODE_OK),
        .CLR(RST_IBUF),
        .D(D[2]),
        .Q(data_aux[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_aux_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_CODE_OK),
        .CLR(RST_IBUF),
        .D(D[3]),
        .Q(data_aux[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_aux_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_CODE_OK),
        .CLR(RST_IBUF),
        .D(data_aux[0]),
        .Q(data_aux[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_aux_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_CODE_OK),
        .CLR(RST_IBUF),
        .D(data_aux[1]),
        .Q(data_aux[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_aux_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_CODE_OK),
        .CLR(RST_IBUF),
        .D(data_aux[2]),
        .Q(data_aux[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_aux_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_CODE_OK),
        .CLR(RST_IBUF),
        .D(data_aux[3]),
        .Q(data_aux[7]));
  LUT4 #(
    .INIT(16'h88B8)) 
    data_ok_aux_i_1
       (.I0(data_ok_aux),
        .I1(RST_IBUF),
        .I2(estado_act[1]),
        .I3(estado_act[0]),
        .O(data_ok_aux_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_ok_aux_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data_ok_aux_i_1_n_0),
        .Q(data_ok_aux),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \estado_act[0]_i_1 
       (.I0(estado_act[1]),
        .I1(KEY_CODE_OK),
        .I2(estado_act[0]),
        .O(\estado_act[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \estado_act[1]_i_1 
       (.I0(estado_act[0]),
        .I1(estado_act[1]),
        .I2(KEY_CODE_OK),
        .O(\estado_act[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \estado_act_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\estado_act[0]_i_1_n_0 ),
        .Q(estado_act[0]));
  FDCE #(
    .INIT(1'b0)) 
    \estado_act_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\estado_act[1]_i_1_n_0 ),
        .Q(estado_act[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sel_dsply[0]_i_1 
       (.I0(\cnt_1ms[19]_i_2_n_0 ),
        .I1(\sel_dsply_reg_n_0_[0] ),
        .O(\sel_dsply[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \sel_dsply[1]_i_1 
       (.I0(\sel_dsply_reg_n_0_[0] ),
        .I1(\cnt_1ms[19]_i_2_n_0 ),
        .I2(\sel_dsply_reg_n_0_[1] ),
        .O(\sel_dsply[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sel_dsply_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\sel_dsply[0]_i_1_n_0 ),
        .Q(\sel_dsply_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \sel_dsply_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\sel_dsply[1]_i_1_n_0 ),
        .Q(\sel_dsply_reg_n_0_[1] ));
endmodule

module oled_controller
   (BUSY_OBUF,
    RES_OBUF,
    VBAT_OBUF,
    VDD_OBUF,
    Q,
    D,
    E,
    CLK_IBUF_BUFG,
    RST_IBUF,
    DATA_OK,
    END_SPI,
    \DATA_reg[7] ,
    lopt);
  output BUSY_OBUF;
  output RES_OBUF;
  output VBAT_OBUF;
  output VDD_OBUF;
  output [0:0]Q;
  output [7:0]D;
  output [0:0]E;
  input CLK_IBUF_BUFG;
  input RST_IBUF;
  input DATA_OK;
  input END_SPI;
  input [7:0]\DATA_reg[7] ;
  output lopt;

  wire \/i__n_0 ;
  wire BUSY_OBUF;
  wire BUSY_i_1_n_0;
  wire CLK_IBUF_BUFG;
  wire [7:0]D;
  wire DATA_OK;
  wire [8:0]DATA_TX;
  wire DATA_TX_OK;
  wire \DATA_TX_reg[0]_i_2_n_0 ;
  wire \DATA_TX_reg[1]_i_2_n_0 ;
  wire \DATA_TX_reg[2]_i_2_n_0 ;
  wire \DATA_TX_reg[3]_i_2_n_0 ;
  wire \DATA_TX_reg[4]_i_2_n_0 ;
  wire \DATA_TX_reg[5]_i_2_n_0 ;
  wire \DATA_TX_reg[6]_i_2_n_0 ;
  wire \DATA_TX_reg[7]_i_2_n_0 ;
  wire \DATA_TX_reg[8]_i_3_n_0 ;
  wire \DATA_TX_reg_reg_n_0_[7] ;
  wire [7:0]\DATA_reg[7] ;
  wire [8:0]DOUT_cfg;
  wire \DOUT_cfg[0]_i_1_n_0 ;
  wire \DOUT_cfg[1]_i_1_n_0 ;
  wire \DOUT_cfg[2]_i_1_n_0 ;
  wire \DOUT_cfg[3]_i_1_n_0 ;
  wire \DOUT_cfg[4]_i_2_n_0 ;
  wire \DOUT_cfg[4]_i_3_n_0 ;
  wire \DOUT_cfg[5]_i_2_n_0 ;
  wire \DOUT_cfg[5]_i_3_n_0 ;
  wire \DOUT_cfg[6]_i_2_n_0 ;
  wire \DOUT_cfg[6]_i_3_n_0 ;
  wire \DOUT_cfg[7]_i_2_n_0 ;
  wire \DOUT_cfg[8]_i_2_n_0 ;
  wire [7:0]DOUT_dec_reg__0;
  wire [0:0]E;
  wire EN;
  wire END_SPI;
  wire END_TIME;
  wire END_TIME_i_1_n_0;
  wire END_TX;
  (* RTL_KEEP = "yes" *) wire [1:0]END_vector;
  wire EN_reg;
  wire \FSM_onehot_state_cfg[1]_i_1_n_0 ;
  wire \FSM_onehot_state_cfg[2]_i_1_n_0 ;
  wire \FSM_onehot_state_cfg[3]_i_1_n_0 ;
  wire \FSM_onehot_state_cfg[3]_i_2_n_0 ;
  wire \FSM_onehot_state_cfg[4]_i_1_n_0 ;
  wire \FSM_onehot_state_cfg[4]_i_2_n_0 ;
  wire \FSM_onehot_state_cfg[4]_i_3_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_cfg_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_cfg_reg_n_0_[1] ;
  wire \FSM_onehot_std_2[7]_i_1_n_0 ;
  wire \FSM_onehot_std_2[7]_i_2_n_0 ;
  wire \FSM_onehot_std_2[7]_i_3_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_std_2_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_std_2_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_std_2_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_std_2_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_std_2_reg_n_0_[6] ;
  wire \FSM_sequential_state_dec[0]_i_1_n_0 ;
  wire \FSM_sequential_state_dec[0]_i_2_n_0 ;
  wire \FSM_sequential_state_dec[1]_i_1_n_0 ;
  wire \FSM_sequential_state_dec[1]_i_2_n_0 ;
  wire \FSM_sequential_state_dec[1]_i_3_n_0 ;
  wire \FSM_sequential_state_dec[1]_i_4_n_0 ;
  wire \FSM_sequential_state_dec[2]_i_1_n_0 ;
  wire \FSM_sequential_std_1[0]_i_1_n_0 ;
  wire \FSM_sequential_std_1[1]_i_1_n_0 ;
  wire \FSM_sequential_std_1[2]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire NEW_DAT_config;
  wire [0:0]Q;
  wire Q_0;
  wire Q_i_2_n_0;
  wire RES_OBUF;
  wire RES_i_1_n_0;
  wire RES_i_2_n_0;
  wire RST_IBUF;
  wire [2:2]VAL_TIME;
  (* RTL_KEEP = "yes" *) wire VAL_TIME_2;
  wire \^VBAT_OBUF ;
  wire VBAT_reg_lopt_replica_1;
  wire VDD_OBUF;
  wire aux_end;
  wire ce__7;
  wire \cnt_1ms[0]_i_1__0_n_0 ;
  wire \cnt_1ms[1]_i_1__0_n_0 ;
  wire \cnt_1ms[2]_i_1__0_n_0 ;
  wire \cnt_1ms[3]_i_1__0_n_0 ;
  wire \cnt_1ms[4]_i_1__0_n_0 ;
  wire \cnt_1ms[4]_i_2_n_0 ;
  wire \cnt_1ms[5]_i_1__0_n_0 ;
  wire \cnt_1ms[6]_i_1__0_n_0 ;
  wire \cnt_1ms[6]_i_2_n_0 ;
  wire [6:0]cnt_1ms_reg__0;
  (* RTL_KEEP = "yes" *) wire cnt_ADDR_cfg;
  wire \cnt_ADDR_cfg[6]_i_2_n_0 ;
  wire [6:0]cnt_ADDR_cfg_reg__0;
  wire cnt_cmd_glob;
  wire \cnt_cmd_glob[0]_i_1_n_0 ;
  wire \cnt_cmd_glob[1]_i_1_n_0 ;
  wire [3:0]cnt_cmd_glob_reg__0;
  wire [2:0]cnt_cmd_var;
  wire \cnt_cmd_var[0]_i_1_n_0 ;
  wire \cnt_cmd_var[1]_i_1_n_0 ;
  wire \cnt_cmd_var[2]_i_1_n_0 ;
  wire \cnt_msg[1]_i_1_n_0 ;
  wire \cnt_msg[3]_i_1_n_0 ;
  wire \cnt_msg[4]_i_1_n_0 ;
  wire \cnt_msg[6]_i_1_n_0 ;
  wire \cnt_msg[6]_i_3_n_0 ;
  wire [6:0]cnt_msg_reg__0;
  wire [9:3]cnt_pix;
  wire \cnt_pix[0]_i_1_n_0 ;
  wire \cnt_pix[1]_i_1_n_0 ;
  wire \cnt_pix[2]_i_1_n_0 ;
  wire \cnt_pix[9]_i_1_n_0 ;
  wire \cnt_pix[9]_i_3_n_0 ;
  wire [9:3]cnt_pix_3;
  wire [9:0]cnt_pix__0;
  wire \cnt_pix_reg_n_0_[0] ;
  wire \cnt_pix_reg_n_0_[1] ;
  wire \cnt_pix_reg_n_0_[2] ;
  wire [8:4]\memoria_clear[0]_4 ;
  wire [2:0]num_cmds;
  wire \num_cmds[0]_i_1_n_0 ;
  wire \num_cmds[1]_i_1_n_0 ;
  wire \num_cmds[2]_i_1_n_0 ;
  wire [6:0]p_0_in;
  (* RTL_KEEP = "yes" *) wire p_0_in1_in;
  wire [9:3]p_0_in_1;
  wire [3:2]p_0_in__0;
  wire [6:0]plusOp;
  wire \plusOp_inferred__1/cnt_pix[4]_i_2_n_0 ;
  wire \plusOp_inferred__1/cnt_pix[5]_i_2_n_0 ;
  wire \plusOp_inferred__1/cnt_pix[8]_i_2_n_0 ;
  wire \plusOp_inferred__1/cnt_pix[9]_i_4_n_0 ;
  wire s_dat;
  wire start;
  wire start_i_1_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]state_dec;
  wire [1:0]state_vd;
  wire \state_vd[0]_i_1_n_0 ;
  wire \state_vd[1]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire [2:0]std_1;
  wire std_11_n_0;
  wire [15:8]NLW_DOUT_dec_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_DOUT_dec_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_DOUT_dec_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_DOUT_dec_reg_DOPBDOP_UNCONNECTED;

  assign lopt = VBAT_reg_lopt_replica_1;
  LUT5 #(
    .INIT(32'h33B833FF)) 
    \/i_ 
       (.I0(END_TX),
        .I1(std_1[1]),
        .I2(s_dat),
        .I3(std_1[2]),
        .I4(std_1[0]),
        .O(\/i__n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    BUSY_i_1
       (.I0(state_vd[1]),
        .I1(state_vd[0]),
        .O(BUSY_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    BUSY_reg
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY_i_1_n_0),
        .D(DATA_OK),
        .PRE(RST_IBUF),
        .Q(BUSY_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_SPI_REG[0]_i_1 
       (.I0(DOUT_dec_reg__0[0]),
        .I1(Q),
        .I2(p_0_in_1[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_SPI_REG[1]_i_1 
       (.I0(DOUT_dec_reg__0[1]),
        .I1(Q),
        .I2(p_0_in_1[4]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_SPI_REG[2]_i_1 
       (.I0(DOUT_dec_reg__0[2]),
        .I1(Q),
        .I2(p_0_in_1[5]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_SPI_REG[3]_i_1 
       (.I0(DOUT_dec_reg__0[3]),
        .I1(Q),
        .I2(p_0_in_1[6]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_SPI_REG[4]_i_1 
       (.I0(DOUT_dec_reg__0[4]),
        .I1(Q),
        .I2(p_0_in_1[7]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_SPI_REG[5]_i_1 
       (.I0(DOUT_dec_reg__0[5]),
        .I1(Q),
        .I2(p_0_in_1[8]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_SPI_REG[6]_i_1 
       (.I0(DOUT_dec_reg__0[6]),
        .I1(Q),
        .I2(p_0_in_1[9]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_SPI_REG[7]_i_1 
       (.I0(DOUT_dec_reg__0[7]),
        .I1(Q),
        .I2(\DATA_TX_reg_reg_n_0_[7] ),
        .O(D[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[0]_i_1 
       (.I0(\DATA_reg[7] [0]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[0]_i_2_n_0 ),
        .O(DATA_TX[0]));
  LUT6 #(
    .INIT(64'h88BBB8BB88BB8888)) 
    \DATA_TX_reg[0]_i_2 
       (.I0(DOUT_cfg[0]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[1]),
        .I3(cnt_cmd_glob_reg__0[3]),
        .I4(cnt_cmd_glob_reg__0[2]),
        .I5(cnt_cmd_glob_reg__0[0]),
        .O(\DATA_TX_reg[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[1]_i_1 
       (.I0(\DATA_reg[7] [1]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[1]_i_2_n_0 ),
        .O(DATA_TX[1]));
  LUT6 #(
    .INIT(64'h88B888B88B88888B)) 
    \DATA_TX_reg[1]_i_2 
       (.I0(DOUT_cfg[1]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[3]),
        .I3(cnt_cmd_glob_reg__0[2]),
        .I4(cnt_cmd_glob_reg__0[1]),
        .I5(cnt_cmd_glob_reg__0[0]),
        .O(\DATA_TX_reg[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[2]_i_1 
       (.I0(\DATA_reg[7] [2]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[2]_i_2_n_0 ),
        .O(DATA_TX[2]));
  LUT6 #(
    .INIT(64'h88B88B8B888B888B)) 
    \DATA_TX_reg[2]_i_2 
       (.I0(DOUT_cfg[2]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[3]),
        .I3(cnt_cmd_glob_reg__0[2]),
        .I4(cnt_cmd_glob_reg__0[0]),
        .I5(cnt_cmd_glob_reg__0[1]),
        .O(\DATA_TX_reg[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[3]_i_1 
       (.I0(\DATA_reg[7] [3]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[3]_i_2_n_0 ),
        .O(DATA_TX[3]));
  LUT6 #(
    .INIT(64'h88BB88BB8B8888BB)) 
    \DATA_TX_reg[3]_i_2 
       (.I0(DOUT_cfg[3]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[3]),
        .I3(cnt_cmd_glob_reg__0[2]),
        .I4(cnt_cmd_glob_reg__0[1]),
        .I5(cnt_cmd_glob_reg__0[0]),
        .O(\DATA_TX_reg[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[4]_i_1 
       (.I0(\DATA_reg[7] [4]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[4]_i_2_n_0 ),
        .O(DATA_TX[4]));
  LUT6 #(
    .INIT(64'h88888B8B888BB888)) 
    \DATA_TX_reg[4]_i_2 
       (.I0(DOUT_cfg[4]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[3]),
        .I3(cnt_cmd_glob_reg__0[0]),
        .I4(cnt_cmd_glob_reg__0[2]),
        .I5(cnt_cmd_glob_reg__0[1]),
        .O(\DATA_TX_reg[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[5]_i_1 
       (.I0(\DATA_reg[7] [5]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[5]_i_2_n_0 ),
        .O(DATA_TX[5]));
  LUT6 #(
    .INIT(64'h8BB8888888B88B8B)) 
    \DATA_TX_reg[5]_i_2 
       (.I0(DOUT_cfg[5]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[3]),
        .I3(cnt_cmd_glob_reg__0[2]),
        .I4(cnt_cmd_glob_reg__0[1]),
        .I5(cnt_cmd_glob_reg__0[0]),
        .O(\DATA_TX_reg[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[6]_i_1 
       (.I0(\DATA_reg[7] [6]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[6]_i_2_n_0 ),
        .O(DATA_TX[6]));
  LUT6 #(
    .INIT(64'h888B88B888888BB8)) 
    \DATA_TX_reg[6]_i_2 
       (.I0(DOUT_cfg[6]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[3]),
        .I3(cnt_cmd_glob_reg__0[2]),
        .I4(cnt_cmd_glob_reg__0[1]),
        .I5(cnt_cmd_glob_reg__0[0]),
        .O(\DATA_TX_reg[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[7]_i_1 
       (.I0(\DATA_reg[7] [7]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[7]_i_2_n_0 ),
        .O(DATA_TX[7]));
  LUT6 #(
    .INIT(64'h8BBB88888BBB8BBB)) 
    \DATA_TX_reg[7]_i_2 
       (.I0(DOUT_cfg[7]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[2]),
        .I3(cnt_cmd_glob_reg__0[3]),
        .I4(cnt_cmd_glob_reg__0[0]),
        .I5(cnt_cmd_glob_reg__0[1]),
        .O(\DATA_TX_reg[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \DATA_TX_reg[8]_i_1 
       (.I0(state_vd[1]),
        .I1(state_vd[0]),
        .I2(END_vector[0]),
        .I3(\DATA_TX_reg[8]_i_3_n_0 ),
        .O(DATA_TX_OK));
  LUT3 #(
    .INIT(8'hEA)) 
    \DATA_TX_reg[8]_i_2 
       (.I0(END_vector[0]),
        .I1(DOUT_cfg[8]),
        .I2(END_vector[1]),
        .O(DATA_TX[8]));
  LUT5 #(
    .INIT(32'h888888B8)) 
    \DATA_TX_reg[8]_i_3 
       (.I0(NEW_DAT_config),
        .I1(END_vector[1]),
        .I2(std_1[1]),
        .I3(std_1[2]),
        .I4(std_1[0]),
        .O(\DATA_TX_reg[8]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[0]),
        .Q(p_0_in_1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[1]),
        .Q(p_0_in_1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[2]),
        .Q(p_0_in_1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[3]),
        .Q(p_0_in_1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[4]),
        .Q(p_0_in_1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[5]),
        .Q(p_0_in_1[8]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[6]),
        .Q(p_0_in_1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[7]),
        .Q(\DATA_TX_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[8]),
        .Q(Q));
  LUT6 #(
    .INIT(64'h0519510A0E140100)) 
    \DOUT_cfg[0]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[4]),
        .I1(cnt_ADDR_cfg_reg__0[0]),
        .I2(cnt_ADDR_cfg_reg__0[6]),
        .I3(cnt_ADDR_cfg_reg__0[2]),
        .I4(cnt_ADDR_cfg_reg__0[3]),
        .I5(cnt_ADDR_cfg_reg__0[1]),
        .O(\DOUT_cfg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101038A412000732)) 
    \DOUT_cfg[1]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[3]),
        .I1(cnt_ADDR_cfg_reg__0[4]),
        .I2(cnt_ADDR_cfg_reg__0[2]),
        .I3(cnt_ADDR_cfg_reg__0[1]),
        .I4(cnt_ADDR_cfg_reg__0[6]),
        .I5(cnt_ADDR_cfg_reg__0[0]),
        .O(\DOUT_cfg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0032005001121012)) 
    \DOUT_cfg[2]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[4]),
        .I1(cnt_ADDR_cfg_reg__0[6]),
        .I2(cnt_ADDR_cfg_reg__0[3]),
        .I3(cnt_ADDR_cfg_reg__0[2]),
        .I4(cnt_ADDR_cfg_reg__0[0]),
        .I5(cnt_ADDR_cfg_reg__0[1]),
        .O(\DOUT_cfg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002014F00003400)) 
    \DOUT_cfg[3]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[1]),
        .I1(cnt_ADDR_cfg_reg__0[2]),
        .I2(cnt_ADDR_cfg_reg__0[4]),
        .I3(cnt_ADDR_cfg_reg__0[0]),
        .I4(cnt_ADDR_cfg_reg__0[6]),
        .I5(cnt_ADDR_cfg_reg__0[3]),
        .O(\DOUT_cfg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000400100)) 
    \DOUT_cfg[4]_i_2 
       (.I0(cnt_ADDR_cfg_reg__0[5]),
        .I1(cnt_ADDR_cfg_reg__0[6]),
        .I2(cnt_ADDR_cfg_reg__0[3]),
        .I3(cnt_ADDR_cfg_reg__0[4]),
        .I4(cnt_ADDR_cfg_reg__0[1]),
        .I5(cnt_ADDR_cfg_reg__0[2]),
        .O(\DOUT_cfg[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \DOUT_cfg[4]_i_3 
       (.I0(cnt_ADDR_cfg_reg__0[2]),
        .I1(cnt_ADDR_cfg_reg__0[4]),
        .I2(cnt_ADDR_cfg_reg__0[3]),
        .I3(cnt_ADDR_cfg_reg__0[5]),
        .I4(cnt_ADDR_cfg_reg__0[6]),
        .O(\DOUT_cfg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4A6A1A7A5A6B1FAB)) 
    \DOUT_cfg[5]_i_2 
       (.I0(cnt_ADDR_cfg_reg__0[5]),
        .I1(cnt_ADDR_cfg_reg__0[2]),
        .I2(cnt_ADDR_cfg_reg__0[4]),
        .I3(cnt_ADDR_cfg_reg__0[3]),
        .I4(cnt_ADDR_cfg_reg__0[1]),
        .I5(cnt_ADDR_cfg_reg__0[0]),
        .O(\DOUT_cfg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000100100)) 
    \DOUT_cfg[5]_i_3 
       (.I0(cnt_ADDR_cfg_reg__0[5]),
        .I1(cnt_ADDR_cfg_reg__0[4]),
        .I2(cnt_ADDR_cfg_reg__0[2]),
        .I3(cnt_ADDR_cfg_reg__0[3]),
        .I4(cnt_ADDR_cfg_reg__0[0]),
        .I5(cnt_ADDR_cfg_reg__0[1]),
        .O(\DOUT_cfg[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \DOUT_cfg[6]_i_1 
       (.I0(\DOUT_cfg[6]_i_2_n_0 ),
        .I1(cnt_ADDR_cfg_reg__0[5]),
        .I2(\DOUT_cfg[6]_i_3_n_0 ),
        .O(\memoria_clear[0]_4 [6]));
  LUT6 #(
    .INIT(64'hFEFF0000FFFF0000)) 
    \DOUT_cfg[6]_i_2 
       (.I0(cnt_ADDR_cfg_reg__0[0]),
        .I1(cnt_ADDR_cfg_reg__0[2]),
        .I2(cnt_ADDR_cfg_reg__0[4]),
        .I3(cnt_ADDR_cfg_reg__0[3]),
        .I4(cnt_ADDR_cfg_reg__0[6]),
        .I5(cnt_ADDR_cfg_reg__0[1]),
        .O(\DOUT_cfg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h31F4F3301134CC0C)) 
    \DOUT_cfg[6]_i_3 
       (.I0(cnt_ADDR_cfg_reg__0[6]),
        .I1(cnt_ADDR_cfg_reg__0[4]),
        .I2(cnt_ADDR_cfg_reg__0[3]),
        .I3(cnt_ADDR_cfg_reg__0[2]),
        .I4(cnt_ADDR_cfg_reg__0[1]),
        .I5(cnt_ADDR_cfg_reg__0[0]),
        .O(\DOUT_cfg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \DOUT_cfg[7]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[5]),
        .I1(cnt_ADDR_cfg_reg__0[2]),
        .I2(cnt_ADDR_cfg_reg__0[3]),
        .I3(\DOUT_cfg[7]_i_2_n_0 ),
        .I4(cnt_ADDR_cfg_reg__0[4]),
        .I5(cnt_ADDR_cfg_reg__0[0]),
        .O(\memoria_clear[0]_4 [7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DOUT_cfg[7]_i_2 
       (.I0(cnt_ADDR_cfg_reg__0[6]),
        .I1(cnt_ADDR_cfg_reg__0[1]),
        .O(\DOUT_cfg[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0F1E)) 
    \DOUT_cfg[8]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[4]),
        .I1(cnt_ADDR_cfg_reg__0[5]),
        .I2(cnt_ADDR_cfg_reg__0[6]),
        .I3(cnt_ADDR_cfg_reg__0[3]),
        .I4(\DOUT_cfg[8]_i_2_n_0 ),
        .O(\memoria_clear[0]_4 [8]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \DOUT_cfg[8]_i_2 
       (.I0(cnt_ADDR_cfg_reg__0[2]),
        .I1(cnt_ADDR_cfg_reg__0[1]),
        .I2(cnt_ADDR_cfg_reg__0[0]),
        .O(\DOUT_cfg[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\DOUT_cfg[0]_i_1_n_0 ),
        .Q(DOUT_cfg[0]),
        .R(cnt_ADDR_cfg_reg__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\DOUT_cfg[1]_i_1_n_0 ),
        .Q(DOUT_cfg[1]),
        .R(cnt_ADDR_cfg_reg__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\DOUT_cfg[2]_i_1_n_0 ),
        .Q(DOUT_cfg[2]),
        .R(cnt_ADDR_cfg_reg__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\DOUT_cfg[3]_i_1_n_0 ),
        .Q(DOUT_cfg[3]),
        .R(cnt_ADDR_cfg_reg__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\memoria_clear[0]_4 [4]),
        .Q(DOUT_cfg[4]),
        .R(1'b0));
  MUXF7 \DOUT_cfg_reg[4]_i_1 
       (.I0(\DOUT_cfg[4]_i_2_n_0 ),
        .I1(\DOUT_cfg[4]_i_3_n_0 ),
        .O(\memoria_clear[0]_4 [4]),
        .S(cnt_ADDR_cfg_reg__0[0]));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\memoria_clear[0]_4 [5]),
        .Q(DOUT_cfg[5]),
        .R(1'b0));
  MUXF7 \DOUT_cfg_reg[5]_i_1 
       (.I0(\DOUT_cfg[5]_i_2_n_0 ),
        .I1(\DOUT_cfg[5]_i_3_n_0 ),
        .O(\memoria_clear[0]_4 [5]),
        .S(cnt_ADDR_cfg_reg__0[6]));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\memoria_clear[0]_4 [6]),
        .Q(DOUT_cfg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\memoria_clear[0]_4 [7]),
        .Q(DOUT_cfg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\memoria_clear[0]_4 [8]),
        .Q(DOUT_cfg[8]),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U_OLED/DOUT_dec" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000005F00000000000000000000000000000000000000000000),
    .INIT_11(256'h000000240026003C00640026003C006400000000000000030000000300000000),
    .INIT_12(256'h000000210052002400080012002500420000003200490049007F004900490026),
    .INIT_13(256'h0000000000000000000300000000000000000028005800220055004E00500020),
    .INIT_14(256'h00000000001C0022004100000000000000000000000000410022001C00000000),
    .INIT_15(256'h0000000000080008003E000800080000000000150015000E000E001500150000),
    .INIT_16(256'h0000000000080008000800080008000000000000000000300050000000000000),
    .INIT_17(256'h0000000100020004000800100020004000000000000000000040000000000000),
    .INIT_18(256'h0000000000000040007F00410000000000000000003E004100410041003E0000),
    .INIT_19(256'h0000000000360049004900410022000000000000006E00490051006100420000),
    .INIT_1A(256'h00000000007100490049004900270000000000000010007F0012001400180000),
    .INIT_1B(256'h000000000003000D001100210043000000000000007000480049004A003C0000),
    .INIT_1C(256'h00000000001E0029004900090006000000000000003600490049004900360000),
    .INIT_1D(256'h0000000000000030005200000000000000000000000000000012000000000000),
    .INIT_1E(256'h0000001400140014001400140014000000000000002200140014000800000000),
    .INIT_1F(256'h0000000000020005005900010002000000000000000800140014002200000000),
    .INIT_20(256'h00000040007C004A0009004A007C00400000002E0051004D0055005D0041003E),
    .INIT_21(256'h0000002200410041004100410022001C000000360049004900490049007F0041),
    .INIT_22(256'h000000630041005D00490049007F00410000001C0022004100410041007F0041),
    .INIT_23(256'h00000008003A0049004900410022001C000000030001001D00090049007F0041),
    .INIT_24(256'h0000000000410041007F00410041000000000041007F000800080008007F0041),
    .INIT_25(256'h0000004100610012000C0008007F0041000000010001003F0041004100400030),
    .INIT_26(256'h00000041007F0042000C0042007F0041000000600040004000400041007F0041),
    .INIT_27(256'h0000001C00220041004100410022001C00000001007F0011000C0042007F0041),
    .INIT_28(256'h0000004C00520061002100210012000C000000060009000900090049007F0041),
    .INIT_29(256'h00000033004900490049004900490066000000460069001900090009007F0041),
    .INIT_2A(256'h00000001003F004100400041003F00010000000300010041007F004100010003),
    .INIT_2B(256'h00000001001F006100140061001F000100000001000F003100400031000F0001),
    .INIT_2C(256'h0000000100030044007800440003000100000041004100360008003600410041),
    .INIT_2D(256'h00000000000000410041007F0000000000000061004300450049005100610043),
    .INIT_2E(256'h000000000000007F004100410000000000000040002000100008000400020001),
    .INIT_2F(256'h0000004000400040004000400040000000000004000200010001000200040000),
    .INIT_30(256'h00000040003C004A004A004A0034000000000000000000000000000200010000),
    .INIT_31(256'h000000000024004200420042003C000000000030004800480048003F00410000),
    .INIT_32(256'h00000000002C004A004A004A003C000000000040003F00490048004800300000),
    .INIT_33(256'h00000001003F004900490049002600000000000000090049007E004800000000),
    .INIT_34(256'h0000000000000040007D004400000000000000400078004400040048007F0041),
    .INIT_35(256'h000000420042002400180010007F0041000000000000003D0044004000000000),
    .INIT_36(256'h00000040007E0002007C0002007E00420000000000400040007F004100400000),
    .INIT_37(256'h00000000003C004200420042003C000000000040007C004200020044007E0042),
    .INIT_38(256'h00000041007F0049000900090006000000000006000900090049007F00410000),
    .INIT_39(256'h000000000036004A004A004A0064000000000004000200020044007E00420000),
    .INIT_3A(256'h0040007E002200400040003E0002000000000000002000440044003F00040000),
    .INIT_3B(256'h00000002001E006200180062001E000200000002000E003200400032000E0002),
    .INIT_3C(256'h0000000100030005003800450043000100000042006200140008001400620042),
    .INIT_3D(256'h00000000000000410036000800000000000000620046004A0052006200460000),
    .INIT_3E(256'h000000000008003600410000000000000000000000000000007F000000000000),
    .INIT_3F(256'h005500AA005500AA005500AA005500AA00000018001000100008000800180000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    DOUT_dec_reg
       (.ADDRARDADDR({cnt_pix__0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(CLK_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_DOUT_dec_reg_DOADO_UNCONNECTED[15:8],DOUT_dec_reg__0}),
        .DOBDO(NLW_DOUT_dec_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_DOUT_dec_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_DOUT_dec_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h40)) 
    D_C_i_1
       (.I0(state_dec[2]),
        .I1(state_dec[0]),
        .I2(state_dec[1]),
        .O(E));
  LUT5 #(
    .INIT(32'h00000001)) 
    END_TIME_i_1
       (.I0(cnt_msg_reg__0[6]),
        .I1(cnt_msg_reg__0[4]),
        .I2(cnt_msg_reg__0[5]),
        .I3(Q_i_2_n_0),
        .I4(Q_0),
        .O(END_TIME_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    END_TIME_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(END_TIME_i_1_n_0),
        .Q(END_TIME));
  LUT3 #(
    .INIT(8'hFE)) 
    EN_reg0
       (.I0(VAL_TIME_2),
        .I1(\FSM_onehot_std_2_reg_n_0_[1] ),
        .I2(p_0_in1_in),
        .O(EN));
  FDPE #(
    .INIT(1'b1)) 
    EN_reg_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(EN),
        .PRE(RST_IBUF),
        .Q(EN_reg));
  LUT3 #(
    .INIT(8'hCD)) 
    \FSM_onehot_state_cfg[1]_i_1 
       (.I0(NEW_DAT_config),
        .I1(\FSM_onehot_state_cfg_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_cfg_reg_n_0_[1] ),
        .O(\FSM_onehot_state_cfg[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state_cfg[2]_i_1 
       (.I0(\FSM_onehot_state_cfg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_cfg_reg_n_0_[0] ),
        .O(\FSM_onehot_state_cfg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \FSM_onehot_state_cfg[3]_i_1 
       (.I0(\FSM_onehot_state_cfg_reg_n_0_[1] ),
        .I1(cnt_ADDR_cfg_reg__0[2]),
        .I2(\FSM_onehot_state_cfg[3]_i_2_n_0 ),
        .I3(\FSM_onehot_state_cfg_reg_n_0_[0] ),
        .I4(NEW_DAT_config),
        .O(\FSM_onehot_state_cfg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \FSM_onehot_state_cfg[3]_i_2 
       (.I0(cnt_ADDR_cfg_reg__0[6]),
        .I1(cnt_ADDR_cfg_reg__0[0]),
        .I2(cnt_ADDR_cfg_reg__0[4]),
        .I3(cnt_ADDR_cfg_reg__0[5]),
        .I4(cnt_ADDR_cfg_reg__0[1]),
        .I5(cnt_ADDR_cfg_reg__0[3]),
        .O(\FSM_onehot_state_cfg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \FSM_onehot_state_cfg[4]_i_1 
       (.I0(\FSM_onehot_state_cfg_reg_n_0_[1] ),
        .I1(END_vector[1]),
        .I2(\FSM_onehot_state_cfg_reg_n_0_[0] ),
        .I3(END_TX),
        .I4(NEW_DAT_config),
        .I5(cnt_ADDR_cfg),
        .O(\FSM_onehot_state_cfg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00540000)) 
    \FSM_onehot_state_cfg[4]_i_2 
       (.I0(\FSM_onehot_state_cfg_reg_n_0_[1] ),
        .I1(cnt_ADDR_cfg_reg__0[2]),
        .I2(\FSM_onehot_state_cfg[4]_i_3_n_0 ),
        .I3(\FSM_onehot_state_cfg_reg_n_0_[0] ),
        .I4(NEW_DAT_config),
        .O(\FSM_onehot_state_cfg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FSM_onehot_state_cfg[4]_i_3 
       (.I0(cnt_ADDR_cfg_reg__0[6]),
        .I1(cnt_ADDR_cfg_reg__0[0]),
        .I2(cnt_ADDR_cfg_reg__0[5]),
        .I3(cnt_ADDR_cfg_reg__0[4]),
        .I4(cnt_ADDR_cfg_reg__0[1]),
        .I5(cnt_ADDR_cfg_reg__0[3]),
        .O(\FSM_onehot_state_cfg[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle_cfg:00001,rd_rom_cfg:00010,actv_nd_cfg:00100,inc_cnt_addr_cfg:10000,fin_cfg:01000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_cfg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_cfg[4]_i_1_n_0 ),
        .D(1'b0),
        .PRE(RST_IBUF),
        .Q(\FSM_onehot_state_cfg_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle_cfg:00001,rd_rom_cfg:00010,actv_nd_cfg:00100,inc_cnt_addr_cfg:10000,fin_cfg:01000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_cfg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_cfg[4]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_state_cfg[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_cfg_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle_cfg:00001,rd_rom_cfg:00010,actv_nd_cfg:00100,inc_cnt_addr_cfg:10000,fin_cfg:01000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_cfg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_cfg[4]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_state_cfg[2]_i_1_n_0 ),
        .Q(NEW_DAT_config));
  (* FSM_ENCODED_STATES = "idle_cfg:00001,rd_rom_cfg:00010,actv_nd_cfg:00100,inc_cnt_addr_cfg:10000,fin_cfg:01000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_cfg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_cfg[4]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_state_cfg[3]_i_1_n_0 ),
        .Q(END_vector[0]));
  (* FSM_ENCODED_STATES = "idle_cfg:00001,rd_rom_cfg:00010,actv_nd_cfg:00100,inc_cnt_addr_cfg:10000,fin_cfg:01000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_cfg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_cfg[4]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_state_cfg[4]_i_2_n_0 ),
        .Q(cnt_ADDR_cfg));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEEA)) 
    \FSM_onehot_std_2[7]_i_1 
       (.I0(\FSM_onehot_std_2[7]_i_2_n_0 ),
        .I1(END_TIME),
        .I2(\FSM_onehot_std_2_reg_n_0_[1] ),
        .I3(VAL_TIME_2),
        .I4(p_0_in1_in),
        .I5(\FSM_onehot_std_2_reg_n_0_[0] ),
        .O(\FSM_onehot_std_2[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \FSM_onehot_std_2[7]_i_2 
       (.I0(END_TX),
        .I1(\FSM_onehot_std_2_reg_n_0_[2] ),
        .I2(\FSM_onehot_std_2_reg_n_0_[6] ),
        .I3(\FSM_onehot_std_2_reg_n_0_[4] ),
        .I4(\FSM_onehot_std_2[7]_i_3_n_0 ),
        .O(\FSM_onehot_std_2[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_std_2[7]_i_3 
       (.I0(std_1[2]),
        .I1(std_1[0]),
        .I2(std_1[1]),
        .O(\FSM_onehot_std_2[7]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_std_2_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .D(1'b0),
        .PRE(RST_IBUF),
        .Q(\FSM_onehot_std_2_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_std_2_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_std_2_reg_n_0_[0] ),
        .Q(\FSM_onehot_std_2_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_std_2_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_std_2_reg_n_0_[1] ),
        .Q(\FSM_onehot_std_2_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_std_2_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_std_2_reg_n_0_[2] ),
        .Q(p_0_in1_in));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_std_2_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_0_in1_in),
        .Q(\FSM_onehot_std_2_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_std_2_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_std_2_reg_n_0_[4] ),
        .Q(VAL_TIME_2));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_std_2_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(VAL_TIME_2),
        .Q(\FSM_onehot_std_2_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_std_2_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_std_2_reg_n_0_[6] ),
        .Q(END_vector[1]));
  LUT5 #(
    .INIT(32'h004CF040)) 
    \FSM_sequential_state_dec[0]_i_1 
       (.I0(state_dec[2]),
        .I1(\FSM_sequential_state_dec[0]_i_2_n_0 ),
        .I2(state_dec[1]),
        .I3(state_dec[0]),
        .I4(\FSM_sequential_state_dec[1]_i_3_n_0 ),
        .O(\FSM_sequential_state_dec[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FFFFFF)) 
    \FSM_sequential_state_dec[0]_i_2 
       (.I0(\cnt_pix_reg_n_0_[2] ),
        .I1(\cnt_pix_reg_n_0_[0] ),
        .I2(\cnt_pix_reg_n_0_[1] ),
        .I3(Q),
        .I4(state_dec[2]),
        .O(\FSM_sequential_state_dec[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCC8FCC0)) 
    \FSM_sequential_state_dec[1]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_state_dec[1]_i_2_n_0 ),
        .I2(state_dec[1]),
        .I3(state_dec[0]),
        .I4(\FSM_sequential_state_dec[1]_i_3_n_0 ),
        .O(\FSM_sequential_state_dec[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1C1E1E1E1E1E1E1E)) 
    \FSM_sequential_state_dec[1]_i_2 
       (.I0(state_dec[2]),
        .I1(state_dec[1]),
        .I2(state_dec[0]),
        .I3(\cnt_pix_reg_n_0_[1] ),
        .I4(\cnt_pix_reg_n_0_[2] ),
        .I5(\cnt_pix_reg_n_0_[0] ),
        .O(\FSM_sequential_state_dec[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3B3B3B3838383B38)) 
    \FSM_sequential_state_dec[1]_i_3 
       (.I0(END_SPI),
        .I1(state_dec[2]),
        .I2(state_dec[1]),
        .I3(\DATA_TX_reg[8]_i_3_n_0 ),
        .I4(END_vector[0]),
        .I5(\FSM_sequential_state_dec[1]_i_4_n_0 ),
        .O(\FSM_sequential_state_dec[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state_dec[1]_i_4 
       (.I0(state_vd[1]),
        .I1(state_vd[0]),
        .O(\FSM_sequential_state_dec[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h98)) 
    \FSM_sequential_state_dec[2]_i_1 
       (.I0(state_dec[0]),
        .I1(state_dec[1]),
        .I2(state_dec[2]),
        .O(\FSM_sequential_state_dec[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle_dec:000,ld_cnt_pix_dec:001,rd_rom_dec:010,actv_nd_dec_inter:011,actv_nd_dec:100,inc_cnt_pix_dec:110,fin_dec:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_dec_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\FSM_sequential_state_dec[0]_i_1_n_0 ),
        .Q(state_dec[0]));
  (* FSM_ENCODED_STATES = "idle_dec:000,ld_cnt_pix_dec:001,rd_rom_dec:010,actv_nd_dec_inter:011,actv_nd_dec:100,inc_cnt_pix_dec:110,fin_dec:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_dec_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\FSM_sequential_state_dec[1]_i_1_n_0 ),
        .Q(state_dec[1]));
  (* FSM_ENCODED_STATES = "idle_dec:000,ld_cnt_pix_dec:001,rd_rom_dec:010,actv_nd_dec_inter:011,actv_nd_dec:100,inc_cnt_pix_dec:110,fin_dec:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_dec_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\FSM_sequential_state_dec[2]_i_1_n_0 ),
        .Q(state_dec[2]));
  LUT4 #(
    .INIT(16'h07F0)) 
    \FSM_sequential_std_1[0]_i_1 
       (.I0(std_1[2]),
        .I1(std_1[1]),
        .I2(std_1[0]),
        .I3(\/i__n_0 ),
        .O(\FSM_sequential_std_1[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h043CF0F0)) 
    \FSM_sequential_std_1[1]_i_1 
       (.I0(std_11_n_0),
        .I1(std_1[0]),
        .I2(std_1[1]),
        .I3(std_1[2]),
        .I4(\/i__n_0 ),
        .O(\FSM_sequential_std_1[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h24CC)) 
    \FSM_sequential_std_1[2]_i_1 
       (.I0(std_1[0]),
        .I1(std_1[2]),
        .I2(std_1[1]),
        .I3(\/i__n_0 ),
        .O(\FSM_sequential_std_1[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle_1:000,wait_sd:001,act_nd_ini:010,wait_end_tx:011,inc_cnts:100,verif:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_std_1_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\FSM_sequential_std_1[0]_i_1_n_0 ),
        .Q(std_1[0]));
  (* FSM_ENCODED_STATES = "idle_1:000,wait_sd:001,act_nd_ini:010,wait_end_tx:011,inc_cnts:100,verif:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_std_1_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\FSM_sequential_std_1[1]_i_1_n_0 ),
        .Q(std_1[1]));
  (* FSM_ENCODED_STATES = "idle_1:000,wait_sd:001,act_nd_ini:010,wait_end_tx:011,inc_cnts:100,verif:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_std_1_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\FSM_sequential_std_1[2]_i_1_n_0 ),
        .Q(std_1[2]));
  LUT4 #(
    .INIT(16'h0001)) 
    Q_i_1__0
       (.I0(cnt_msg_reg__0[6]),
        .I1(cnt_msg_reg__0[4]),
        .I2(cnt_msg_reg__0[5]),
        .I3(Q_i_2_n_0),
        .O(aux_end));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    Q_i_2
       (.I0(cnt_msg_reg__0[2]),
        .I1(cnt_msg_reg__0[3]),
        .I2(cnt_msg_reg__0[0]),
        .I3(cnt_msg_reg__0[1]),
        .O(Q_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(aux_end),
        .PRE(RST_IBUF),
        .Q(Q_0));
  LUT2 #(
    .INIT(4'hE)) 
    RES_i_1
       (.I0(\FSM_onehot_std_2_reg_n_0_[4] ),
        .I1(p_0_in1_in),
        .O(RES_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    RES_i_2
       (.I0(p_0_in1_in),
        .O(RES_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    RES_reg
       (.C(CLK_IBUF_BUFG),
        .CE(RES_i_1_n_0),
        .D(RES_i_2_n_0),
        .PRE(RST_IBUF),
        .Q(RES_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    \VAL_TIME_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(VAL_TIME_2),
        .CLR(RST_IBUF),
        .D(1'b1),
        .Q(VAL_TIME));
  FDPE #(
    .INIT(1'b1)) 
    VBAT_reg
       (.C(CLK_IBUF_BUFG),
        .CE(VAL_TIME_2),
        .D(1'b0),
        .PRE(RST_IBUF),
        .Q(\^VBAT_OBUF ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDPE #(
    .INIT(1'b1)) 
    VBAT_reg_lopt_replica
       (.C(CLK_IBUF_BUFG),
        .CE(VAL_TIME_2),
        .D(1'b0),
        .PRE(RST_IBUF),
        .Q(VBAT_reg_lopt_replica_1));
  FDPE #(
    .INIT(1'b1)) 
    VDD_reg
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2_reg_n_0_[1] ),
        .D(1'b0),
        .PRE(RST_IBUF),
        .Q(VDD_OBUF));
  LUT3 #(
    .INIT(8'h01)) 
    \cnt_1ms[0]_i_1__0 
       (.I0(cnt_1ms_reg__0[0]),
        .I1(ce__7),
        .I2(start),
        .O(\cnt_1ms[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \cnt_1ms[1]_i_1__0 
       (.I0(cnt_1ms_reg__0[1]),
        .I1(cnt_1ms_reg__0[0]),
        .I2(ce__7),
        .I3(start),
        .O(\cnt_1ms[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h0000006A)) 
    \cnt_1ms[2]_i_1__0 
       (.I0(cnt_1ms_reg__0[2]),
        .I1(cnt_1ms_reg__0[1]),
        .I2(cnt_1ms_reg__0[0]),
        .I3(ce__7),
        .I4(start),
        .O(\cnt_1ms[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006AAA)) 
    \cnt_1ms[3]_i_1__0 
       (.I0(cnt_1ms_reg__0[3]),
        .I1(cnt_1ms_reg__0[2]),
        .I2(cnt_1ms_reg__0[0]),
        .I3(cnt_1ms_reg__0[1]),
        .I4(ce__7),
        .I5(start),
        .O(\cnt_1ms[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000A6AA)) 
    \cnt_1ms[4]_i_1__0 
       (.I0(cnt_1ms_reg__0[4]),
        .I1(cnt_1ms_reg__0[3]),
        .I2(\cnt_1ms[4]_i_2_n_0 ),
        .I3(cnt_1ms_reg__0[2]),
        .I4(ce__7),
        .I5(start),
        .O(\cnt_1ms[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_1ms[4]_i_2 
       (.I0(cnt_1ms_reg__0[1]),
        .I1(cnt_1ms_reg__0[0]),
        .O(\cnt_1ms[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \cnt_1ms[5]_i_1__0 
       (.I0(cnt_1ms_reg__0[5]),
        .I1(\cnt_1ms[6]_i_2_n_0 ),
        .I2(ce__7),
        .I3(start),
        .O(\cnt_1ms[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h0000006A)) 
    \cnt_1ms[6]_i_1__0 
       (.I0(cnt_1ms_reg__0[6]),
        .I1(cnt_1ms_reg__0[5]),
        .I2(\cnt_1ms[6]_i_2_n_0 ),
        .I3(ce__7),
        .I4(start),
        .O(\cnt_1ms[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt_1ms[6]_i_2 
       (.I0(cnt_1ms_reg__0[4]),
        .I1(cnt_1ms_reg__0[2]),
        .I2(cnt_1ms_reg__0[0]),
        .I3(cnt_1ms_reg__0[1]),
        .I4(cnt_1ms_reg__0[3]),
        .O(\cnt_1ms[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cnt_1ms[6]_i_3 
       (.I0(cnt_1ms_reg__0[2]),
        .I1(cnt_1ms_reg__0[4]),
        .I2(cnt_1ms_reg__0[3]),
        .I3(\cnt_1ms[4]_i_2_n_0 ),
        .I4(cnt_1ms_reg__0[5]),
        .I5(cnt_1ms_reg__0[6]),
        .O(ce__7));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_1ms[0]_i_1__0_n_0 ),
        .Q(cnt_1ms_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_1ms[1]_i_1__0_n_0 ),
        .Q(cnt_1ms_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_1ms[2]_i_1__0_n_0 ),
        .Q(cnt_1ms_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_1ms[3]_i_1__0_n_0 ),
        .Q(cnt_1ms_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_1ms[4]_i_1__0_n_0 ),
        .Q(cnt_1ms_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_1ms[5]_i_1__0_n_0 ),
        .Q(cnt_1ms_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_1ms[6]_i_1__0_n_0 ),
        .Q(cnt_1ms_reg__0[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_ADDR_cfg[0]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_ADDR_cfg[1]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[0]),
        .I1(cnt_ADDR_cfg_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_ADDR_cfg[2]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[0]),
        .I1(cnt_ADDR_cfg_reg__0[1]),
        .I2(cnt_ADDR_cfg_reg__0[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_ADDR_cfg[3]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[1]),
        .I1(cnt_ADDR_cfg_reg__0[0]),
        .I2(cnt_ADDR_cfg_reg__0[2]),
        .I3(cnt_ADDR_cfg_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_ADDR_cfg[4]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[2]),
        .I1(cnt_ADDR_cfg_reg__0[0]),
        .I2(cnt_ADDR_cfg_reg__0[1]),
        .I3(cnt_ADDR_cfg_reg__0[3]),
        .I4(cnt_ADDR_cfg_reg__0[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_ADDR_cfg[5]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[3]),
        .I1(cnt_ADDR_cfg_reg__0[1]),
        .I2(cnt_ADDR_cfg_reg__0[0]),
        .I3(cnt_ADDR_cfg_reg__0[2]),
        .I4(cnt_ADDR_cfg_reg__0[4]),
        .I5(cnt_ADDR_cfg_reg__0[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_ADDR_cfg[6]_i_1 
       (.I0(\cnt_ADDR_cfg[6]_i_2_n_0 ),
        .I1(cnt_ADDR_cfg_reg__0[5]),
        .I2(cnt_ADDR_cfg_reg__0[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt_ADDR_cfg[6]_i_2 
       (.I0(cnt_ADDR_cfg_reg__0[4]),
        .I1(cnt_ADDR_cfg_reg__0[2]),
        .I2(cnt_ADDR_cfg_reg__0[0]),
        .I3(cnt_ADDR_cfg_reg__0[1]),
        .I4(cnt_ADDR_cfg_reg__0[3]),
        .O(\cnt_ADDR_cfg[6]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ADDR_cfg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_ADDR_cfg),
        .CLR(RST_IBUF),
        .D(plusOp[0]),
        .Q(cnt_ADDR_cfg_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ADDR_cfg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_ADDR_cfg),
        .CLR(RST_IBUF),
        .D(plusOp[1]),
        .Q(cnt_ADDR_cfg_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ADDR_cfg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_ADDR_cfg),
        .CLR(RST_IBUF),
        .D(plusOp[2]),
        .Q(cnt_ADDR_cfg_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ADDR_cfg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_ADDR_cfg),
        .CLR(RST_IBUF),
        .D(plusOp[3]),
        .Q(cnt_ADDR_cfg_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ADDR_cfg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_ADDR_cfg),
        .CLR(RST_IBUF),
        .D(plusOp[4]),
        .Q(cnt_ADDR_cfg_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ADDR_cfg_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_ADDR_cfg),
        .CLR(RST_IBUF),
        .D(plusOp[5]),
        .Q(cnt_ADDR_cfg_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ADDR_cfg_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_ADDR_cfg),
        .CLR(RST_IBUF),
        .D(plusOp[6]),
        .Q(cnt_ADDR_cfg_reg__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_cmd_glob[0]_i_1 
       (.I0(cnt_cmd_glob_reg__0[0]),
        .O(\cnt_cmd_glob[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_cmd_glob[1]_i_1 
       (.I0(cnt_cmd_glob_reg__0[0]),
        .I1(cnt_cmd_glob_reg__0[1]),
        .O(\cnt_cmd_glob[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_cmd_glob[2]_i_1 
       (.I0(cnt_cmd_glob_reg__0[0]),
        .I1(cnt_cmd_glob_reg__0[1]),
        .I2(cnt_cmd_glob_reg__0[2]),
        .O(p_0_in__0[2]));
  LUT3 #(
    .INIT(8'h02)) 
    \cnt_cmd_glob[3]_i_1 
       (.I0(std_1[2]),
        .I1(std_1[0]),
        .I2(std_1[1]),
        .O(cnt_cmd_glob));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_cmd_glob[3]_i_2 
       (.I0(cnt_cmd_glob_reg__0[1]),
        .I1(cnt_cmd_glob_reg__0[0]),
        .I2(cnt_cmd_glob_reg__0[2]),
        .I3(cnt_cmd_glob_reg__0[3]),
        .O(p_0_in__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_glob_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_cmd_glob),
        .CLR(RST_IBUF),
        .D(\cnt_cmd_glob[0]_i_1_n_0 ),
        .Q(cnt_cmd_glob_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_glob_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_cmd_glob),
        .CLR(RST_IBUF),
        .D(\cnt_cmd_glob[1]_i_1_n_0 ),
        .Q(cnt_cmd_glob_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_glob_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_cmd_glob),
        .CLR(RST_IBUF),
        .D(p_0_in__0[2]),
        .Q(cnt_cmd_glob_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_glob_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_cmd_glob),
        .CLR(RST_IBUF),
        .D(p_0_in__0[3]),
        .Q(cnt_cmd_glob_reg__0[3]));
  LUT4 #(
    .INIT(16'hEE10)) 
    \cnt_cmd_var[0]_i_1 
       (.I0(std_1[1]),
        .I1(std_1[0]),
        .I2(std_1[2]),
        .I3(cnt_cmd_var[0]),
        .O(\cnt_cmd_var[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFDFC0200)) 
    \cnt_cmd_var[1]_i_1 
       (.I0(cnt_cmd_var[0]),
        .I1(std_1[1]),
        .I2(std_1[0]),
        .I3(std_1[2]),
        .I4(cnt_cmd_var[1]),
        .O(\cnt_cmd_var[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFF000080000)) 
    \cnt_cmd_var[2]_i_1 
       (.I0(cnt_cmd_var[1]),
        .I1(cnt_cmd_var[0]),
        .I2(std_1[1]),
        .I3(std_1[0]),
        .I4(std_1[2]),
        .I5(cnt_cmd_var[2]),
        .O(\cnt_cmd_var[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_var_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_cmd_var[0]_i_1_n_0 ),
        .Q(cnt_cmd_var[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_var_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_cmd_var[1]_i_1_n_0 ),
        .Q(cnt_cmd_var[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_var_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_cmd_var[2]_i_1_n_0 ),
        .Q(cnt_cmd_var[2]));
  LUT3 #(
    .INIT(8'h8B)) 
    \cnt_msg[0]_i_1 
       (.I0(\^VBAT_OBUF ),
        .I1(start),
        .I2(cnt_msg_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \cnt_msg[1]_i_1 
       (.I0(start),
        .I1(cnt_msg_reg__0[1]),
        .I2(cnt_msg_reg__0[0]),
        .O(\cnt_msg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \cnt_msg[2]_i_1 
       (.I0(VAL_TIME),
        .I1(start),
        .I2(cnt_msg_reg__0[1]),
        .I3(cnt_msg_reg__0[0]),
        .I4(cnt_msg_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h44444441)) 
    \cnt_msg[3]_i_1 
       (.I0(start),
        .I1(cnt_msg_reg__0[3]),
        .I2(cnt_msg_reg__0[1]),
        .I3(cnt_msg_reg__0[0]),
        .I4(cnt_msg_reg__0[2]),
        .O(\cnt_msg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444441)) 
    \cnt_msg[4]_i_1 
       (.I0(start),
        .I1(cnt_msg_reg__0[4]),
        .I2(cnt_msg_reg__0[2]),
        .I3(cnt_msg_reg__0[0]),
        .I4(cnt_msg_reg__0[1]),
        .I5(cnt_msg_reg__0[3]),
        .O(\cnt_msg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \cnt_msg[5]_i_1 
       (.I0(VAL_TIME),
        .I1(start),
        .I2(\cnt_msg[6]_i_3_n_0 ),
        .I3(cnt_msg_reg__0[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFF0000)) 
    \cnt_msg[6]_i_1 
       (.I0(cnt_msg_reg__0[6]),
        .I1(cnt_msg_reg__0[4]),
        .I2(cnt_msg_reg__0[5]),
        .I3(Q_i_2_n_0),
        .I4(start),
        .I5(ce__7),
        .O(\cnt_msg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \cnt_msg[6]_i_2 
       (.I0(VAL_TIME),
        .I1(start),
        .I2(cnt_msg_reg__0[5]),
        .I3(\cnt_msg[6]_i_3_n_0 ),
        .I4(cnt_msg_reg__0[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt_msg[6]_i_3 
       (.I0(cnt_msg_reg__0[3]),
        .I1(cnt_msg_reg__0[1]),
        .I2(cnt_msg_reg__0[0]),
        .I3(cnt_msg_reg__0[2]),
        .I4(cnt_msg_reg__0[4]),
        .O(\cnt_msg[6]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_msg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_msg[6]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_0_in[0]),
        .Q(cnt_msg_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_msg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_msg[6]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_msg[1]_i_1_n_0 ),
        .Q(cnt_msg_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_msg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_msg[6]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_0_in[2]),
        .Q(cnt_msg_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_msg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_msg[6]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_msg[3]_i_1_n_0 ),
        .Q(cnt_msg_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_msg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_msg[6]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_msg[4]_i_1_n_0 ),
        .Q(cnt_msg_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_msg_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_msg[6]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_0_in[5]),
        .Q(cnt_msg_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_msg_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_msg[6]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_0_in[6]),
        .Q(cnt_msg_reg__0[6]));
  LUT4 #(
    .INIT(16'h5455)) 
    \cnt_pix[0]_i_1 
       (.I0(\cnt_pix_reg_n_0_[0] ),
        .I1(state_dec[1]),
        .I2(state_dec[2]),
        .I3(state_dec[0]),
        .O(\cnt_pix[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h66606666)) 
    \cnt_pix[1]_i_1 
       (.I0(\cnt_pix_reg_n_0_[1] ),
        .I1(\cnt_pix_reg_n_0_[0] ),
        .I2(state_dec[1]),
        .I3(state_dec[2]),
        .I4(state_dec[0]),
        .O(\cnt_pix[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6A6A6A006A6A6A6A)) 
    \cnt_pix[2]_i_1 
       (.I0(\cnt_pix_reg_n_0_[2] ),
        .I1(\cnt_pix_reg_n_0_[1] ),
        .I2(\cnt_pix_reg_n_0_[0] ),
        .I3(state_dec[1]),
        .I4(state_dec[2]),
        .I5(state_dec[0]),
        .O(\cnt_pix[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \cnt_pix[3]_i_1 
       (.I0(p_0_in_1[3]),
        .I1(\cnt_pix[9]_i_3_n_0 ),
        .I2(\cnt_pix_reg_n_0_[1] ),
        .I3(\cnt_pix_reg_n_0_[0] ),
        .I4(\cnt_pix_reg_n_0_[2] ),
        .I5(cnt_pix[3]),
        .O(cnt_pix_3[3]));
  LUT6 #(
    .INIT(64'h0008FFFBFFFB0008)) 
    \cnt_pix[4]_i_1 
       (.I0(p_0_in_1[4]),
        .I1(state_dec[0]),
        .I2(state_dec[2]),
        .I3(state_dec[1]),
        .I4(\plusOp_inferred__1/cnt_pix[4]_i_2_n_0 ),
        .I5(cnt_pix[4]),
        .O(cnt_pix_3[4]));
  LUT6 #(
    .INIT(64'h0008FFFBFFFB0008)) 
    \cnt_pix[5]_i_1 
       (.I0(p_0_in_1[5]),
        .I1(state_dec[0]),
        .I2(state_dec[2]),
        .I3(state_dec[1]),
        .I4(\plusOp_inferred__1/cnt_pix[5]_i_2_n_0 ),
        .I5(cnt_pix[5]),
        .O(cnt_pix_3[5]));
  LUT6 #(
    .INIT(64'h0008FFFBFFFB0008)) 
    \cnt_pix[6]_i_1 
       (.I0(p_0_in_1[6]),
        .I1(state_dec[0]),
        .I2(state_dec[2]),
        .I3(state_dec[1]),
        .I4(\plusOp_inferred__1/cnt_pix[8]_i_2_n_0 ),
        .I5(cnt_pix[6]),
        .O(cnt_pix_3[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \cnt_pix[7]_i_1 
       (.I0(p_0_in_1[7]),
        .I1(\cnt_pix[9]_i_3_n_0 ),
        .I2(\plusOp_inferred__1/cnt_pix[8]_i_2_n_0 ),
        .I3(cnt_pix[6]),
        .I4(cnt_pix[7]),
        .O(cnt_pix_3[7]));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \cnt_pix[8]_i_1 
       (.I0(p_0_in_1[8]),
        .I1(\cnt_pix[9]_i_3_n_0 ),
        .I2(cnt_pix[6]),
        .I3(\plusOp_inferred__1/cnt_pix[8]_i_2_n_0 ),
        .I4(cnt_pix[7]),
        .I5(cnt_pix[8]),
        .O(cnt_pix_3[8]));
  LUT3 #(
    .INIT(8'h42)) 
    \cnt_pix[9]_i_1 
       (.I0(state_dec[0]),
        .I1(state_dec[1]),
        .I2(state_dec[2]),
        .O(\cnt_pix[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \cnt_pix[9]_i_2 
       (.I0(p_0_in_1[9]),
        .I1(\cnt_pix[9]_i_3_n_0 ),
        .I2(\plusOp_inferred__1/cnt_pix[9]_i_4_n_0 ),
        .I3(cnt_pix[8]),
        .I4(cnt_pix[9]),
        .O(cnt_pix_3[9]));
  LUT3 #(
    .INIT(8'h02)) 
    \cnt_pix[9]_i_3 
       (.I0(state_dec[0]),
        .I1(state_dec[2]),
        .I2(state_dec[1]),
        .O(\cnt_pix[9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_pix[0]_i_1_n_0 ),
        .Q(\cnt_pix_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_pix[1]_i_1_n_0 ),
        .Q(\cnt_pix_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_pix[2]_i_1_n_0 ),
        .Q(\cnt_pix_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_3[3]),
        .Q(cnt_pix[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_3[4]),
        .Q(cnt_pix[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_3[5]),
        .Q(cnt_pix[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_3[6]),
        .Q(cnt_pix[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_3[7]),
        .Q(cnt_pix[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_3[8]),
        .Q(cnt_pix[8]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_3[9]),
        .Q(cnt_pix[9]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_pix[0]_i_1_n_0 ),
        .Q(cnt_pix__0[0]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_pix[1]_i_1_n_0 ),
        .Q(cnt_pix__0[1]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_pix[2]_i_1_n_0 ),
        .Q(cnt_pix__0[2]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_3[3]),
        .Q(cnt_pix__0[3]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_3[4]),
        .Q(cnt_pix__0[4]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_3[5]),
        .Q(cnt_pix__0[5]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_3[6]),
        .Q(cnt_pix__0[6]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_3[7]),
        .Q(cnt_pix__0[7]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_3[8]),
        .Q(cnt_pix__0[8]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_3[9]),
        .Q(cnt_pix__0[9]));
  LUT3 #(
    .INIT(8'h40)) 
    i__i_1
       (.I0(state_dec[1]),
        .I1(state_dec[0]),
        .I2(state_dec[2]),
        .O(END_TX));
  LUT4 #(
    .INIT(16'hFBFA)) 
    \num_cmds[0]_i_1 
       (.I0(\FSM_onehot_std_2_reg_n_0_[6] ),
        .I1(\FSM_onehot_std_2_reg_n_0_[4] ),
        .I2(\FSM_onehot_std_2_reg_n_0_[2] ),
        .I3(num_cmds[0]),
        .O(\num_cmds[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABAA)) 
    \num_cmds[1]_i_1 
       (.I0(\FSM_onehot_std_2_reg_n_0_[6] ),
        .I1(\FSM_onehot_std_2_reg_n_0_[4] ),
        .I2(\FSM_onehot_std_2_reg_n_0_[2] ),
        .I3(num_cmds[1]),
        .O(\num_cmds[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \num_cmds[2]_i_1 
       (.I0(\FSM_onehot_std_2_reg_n_0_[6] ),
        .I1(\FSM_onehot_std_2_reg_n_0_[4] ),
        .I2(\FSM_onehot_std_2_reg_n_0_[2] ),
        .I3(num_cmds[2]),
        .O(\num_cmds[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \num_cmds_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\num_cmds[0]_i_1_n_0 ),
        .Q(num_cmds[0]));
  FDCE #(
    .INIT(1'b0)) 
    \num_cmds_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\num_cmds[1]_i_1_n_0 ),
        .Q(num_cmds[1]));
  FDCE #(
    .INIT(1'b0)) 
    \num_cmds_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\num_cmds[2]_i_1_n_0 ),
        .Q(num_cmds[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \plusOp_inferred__1/cnt_pix[4]_i_2 
       (.I0(cnt_pix[3]),
        .I1(\cnt_pix_reg_n_0_[1] ),
        .I2(\cnt_pix_reg_n_0_[0] ),
        .I3(\cnt_pix_reg_n_0_[2] ),
        .O(\plusOp_inferred__1/cnt_pix[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \plusOp_inferred__1/cnt_pix[5]_i_2 
       (.I0(cnt_pix[4]),
        .I1(\cnt_pix_reg_n_0_[2] ),
        .I2(\cnt_pix_reg_n_0_[0] ),
        .I3(\cnt_pix_reg_n_0_[1] ),
        .I4(cnt_pix[3]),
        .O(\plusOp_inferred__1/cnt_pix[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \plusOp_inferred__1/cnt_pix[8]_i_2 
       (.I0(cnt_pix[5]),
        .I1(cnt_pix[3]),
        .I2(\cnt_pix_reg_n_0_[1] ),
        .I3(\cnt_pix_reg_n_0_[0] ),
        .I4(\cnt_pix_reg_n_0_[2] ),
        .I5(cnt_pix[4]),
        .O(\plusOp_inferred__1/cnt_pix[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \plusOp_inferred__1/cnt_pix[9]_i_4 
       (.I0(cnt_pix[7]),
        .I1(\plusOp_inferred__1/cnt_pix[8]_i_2_n_0 ),
        .I2(cnt_pix[6]),
        .O(\plusOp_inferred__1/cnt_pix[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    start_i_1
       (.I0(p_0_in1_in),
        .I1(\FSM_onehot_std_2_reg_n_0_[1] ),
        .I2(VAL_TIME_2),
        .I3(EN_reg),
        .O(start_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    start_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(start_i_1_n_0),
        .Q(start));
  LUT6 #(
    .INIT(64'h000FFF0FFF880088)) 
    \state_vd[0]_i_1 
       (.I0(END_vector[1]),
        .I1(END_vector[0]),
        .I2(DATA_OK),
        .I3(state_vd[1]),
        .I4(END_TX),
        .I5(state_vd[0]),
        .O(\state_vd[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFC44)) 
    \state_vd[1]_i_1 
       (.I0(END_TX),
        .I1(state_vd[1]),
        .I2(DATA_OK),
        .I3(state_vd[0]),
        .O(\state_vd[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_vd_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\state_vd[0]_i_1_n_0 ),
        .Q(state_vd[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_vd_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\state_vd[1]_i_1_n_0 ),
        .Q(state_vd[1]));
  LUT3 #(
    .INIT(8'hFE)) 
    std_10
       (.I0(\FSM_onehot_std_2_reg_n_0_[6] ),
        .I1(\FSM_onehot_std_2_reg_n_0_[2] ),
        .I2(\FSM_onehot_std_2_reg_n_0_[4] ),
        .O(s_dat));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    std_11
       (.I0(cnt_cmd_var[0]),
        .I1(num_cmds[0]),
        .I2(num_cmds[2]),
        .I3(cnt_cmd_var[2]),
        .I4(num_cmds[1]),
        .I5(cnt_cmd_var[1]),
        .O(std_11_n_0));
endmodule

module spi_controller
   (D_C_OBUF,
    SDIN_OBUF,
    CS_OBUF,
    END_SPI,
    SCLK_OBUF,
    E,
    Q,
    CLK_IBUF_BUFG,
    RST_IBUF,
    D);
  output D_C_OBUF;
  output SDIN_OBUF;
  output CS_OBUF;
  output END_SPI;
  output SCLK_OBUF;
  input [0:0]E;
  input [0:0]Q;
  input CLK_IBUF_BUFG;
  input RST_IBUF;
  input [7:0]D;

  wire BUSY;
  wire BUSY_i_1__0_n_0;
  wire BUSY_i_2_n_0;
  wire CLK_IBUF_BUFG;
  wire [6:0]CONT;
  wire \CONT[2]_i_2__0_n_0 ;
  wire \CONT[6]_i_2_n_0 ;
  wire \CONT_reg_n_0_[0] ;
  wire \CONT_reg_n_0_[1] ;
  wire \CONT_reg_n_0_[2] ;
  wire \CONT_reg_n_0_[3] ;
  wire \CONT_reg_n_0_[4] ;
  wire \CONT_reg_n_0_[5] ;
  wire \CONT_reg_n_0_[6] ;
  wire COUNTER_REG;
  wire \COUNTER_REG[0]_i_1_n_0 ;
  wire \COUNTER_REG[1]_i_1_n_0 ;
  wire \COUNTER_REG[2]_i_1_n_0 ;
  wire \COUNTER_REG[3]_i_2_n_0 ;
  wire \COUNTER_REG_reg_n_0_[0] ;
  wire \COUNTER_REG_reg_n_0_[1] ;
  wire \COUNTER_REG_reg_n_0_[2] ;
  wire \COUNTER_REG_reg_n_0_[3] ;
  wire CS_OBUF;
  wire [7:0]D;
  wire \DATA_SPI_REG_reg_n_0_[0] ;
  wire D_C_OBUF;
  wire [0:0]E;
  wire END_SPI;
  wire END_SPI_i_1_n_0;
  wire FC;
  wire FC_reg_n_0;
  wire [0:0]Q;
  wire Q_0;
  wire RST_IBUF;
  wire SCLK_AUX_i_1_n_0;
  wire SCLK_OBUF;
  wire SDIN;
  wire SDIN_OBUF;
  wire SDIN_i_1_n_0;
  wire SDIN_i_3_n_0;
  wire SDIN_i_4_n_0;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;

  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    BUSY_i_1__0
       (.I0(E),
        .I1(BUSY_i_2_n_0),
        .I2(FC_reg_n_0),
        .I3(SCLK_OBUF),
        .I4(BUSY),
        .O(BUSY_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    BUSY_i_2
       (.I0(\COUNTER_REG_reg_n_0_[0] ),
        .I1(\COUNTER_REG_reg_n_0_[1] ),
        .I2(\COUNTER_REG_reg_n_0_[3] ),
        .I3(\COUNTER_REG_reg_n_0_[2] ),
        .O(BUSY_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    BUSY_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(BUSY_i_1__0_n_0),
        .Q(BUSY));
  LUT1 #(
    .INIT(2'h1)) 
    \CONT[0]_i_1__0 
       (.I0(\CONT_reg_n_0_[0] ),
        .O(CONT[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \CONT[1]_i_1__0 
       (.I0(\CONT[2]_i_2__0_n_0 ),
        .I1(\CONT_reg_n_0_[2] ),
        .I2(\CONT_reg_n_0_[0] ),
        .I3(\CONT_reg_n_0_[1] ),
        .O(CONT[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h4FA0)) 
    \CONT[2]_i_1__0 
       (.I0(\CONT_reg_n_0_[1] ),
        .I1(\CONT[2]_i_2__0_n_0 ),
        .I2(\CONT_reg_n_0_[0] ),
        .I3(\CONT_reg_n_0_[2] ),
        .O(CONT[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \CONT[2]_i_2__0 
       (.I0(\CONT_reg_n_0_[4] ),
        .I1(\CONT_reg_n_0_[3] ),
        .I2(\CONT_reg_n_0_[6] ),
        .I3(\CONT_reg_n_0_[5] ),
        .O(\CONT[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \CONT[3]_i_1__0 
       (.I0(\CONT_reg_n_0_[1] ),
        .I1(\CONT_reg_n_0_[0] ),
        .I2(\CONT_reg_n_0_[2] ),
        .I3(\CONT_reg_n_0_[3] ),
        .O(CONT[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \CONT[4]_i_1__0 
       (.I0(\CONT_reg_n_0_[3] ),
        .I1(\CONT_reg_n_0_[2] ),
        .I2(\CONT_reg_n_0_[0] ),
        .I3(\CONT_reg_n_0_[1] ),
        .I4(\CONT_reg_n_0_[4] ),
        .O(CONT[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \CONT[5]_i_1__0 
       (.I0(\CONT_reg_n_0_[4] ),
        .I1(\CONT_reg_n_0_[1] ),
        .I2(\CONT_reg_n_0_[0] ),
        .I3(\CONT_reg_n_0_[2] ),
        .I4(\CONT_reg_n_0_[3] ),
        .I5(\CONT_reg_n_0_[5] ),
        .O(CONT[5]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \CONT[6]_i_1__0 
       (.I0(\CONT_reg_n_0_[5] ),
        .I1(\CONT[6]_i_2_n_0 ),
        .I2(\CONT_reg_n_0_[6] ),
        .O(CONT[6]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \CONT[6]_i_2 
       (.I0(\CONT_reg_n_0_[3] ),
        .I1(\CONT_reg_n_0_[2] ),
        .I2(\CONT_reg_n_0_[0] ),
        .I3(\CONT_reg_n_0_[1] ),
        .I4(\CONT_reg_n_0_[4] ),
        .O(\CONT[6]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(CONT[0]),
        .Q(\CONT_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(CONT[1]),
        .Q(\CONT_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(CONT[2]),
        .Q(\CONT_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(CONT[3]),
        .Q(\CONT_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(CONT[4]),
        .Q(\CONT_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(CONT[5]),
        .Q(\CONT_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \CONT_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(CONT[6]),
        .Q(\CONT_reg_n_0_[6] ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h00FB)) 
    \COUNTER_REG[0]_i_1 
       (.I0(\COUNTER_REG_reg_n_0_[1] ),
        .I1(\COUNTER_REG_reg_n_0_[3] ),
        .I2(\COUNTER_REG_reg_n_0_[2] ),
        .I3(\COUNTER_REG_reg_n_0_[0] ),
        .O(\COUNTER_REG[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \COUNTER_REG[1]_i_1 
       (.I0(\COUNTER_REG_reg_n_0_[0] ),
        .I1(\COUNTER_REG_reg_n_0_[1] ),
        .O(\COUNTER_REG[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \COUNTER_REG[2]_i_1 
       (.I0(\COUNTER_REG_reg_n_0_[0] ),
        .I1(\COUNTER_REG_reg_n_0_[1] ),
        .I2(\COUNTER_REG_reg_n_0_[2] ),
        .O(\COUNTER_REG[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \COUNTER_REG[3]_i_1 
       (.I0(SCLK_OBUF),
        .I1(FC_reg_n_0),
        .I2(BUSY),
        .O(COUNTER_REG));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h78E0)) 
    \COUNTER_REG[3]_i_2 
       (.I0(\COUNTER_REG_reg_n_0_[0] ),
        .I1(\COUNTER_REG_reg_n_0_[1] ),
        .I2(\COUNTER_REG_reg_n_0_[3] ),
        .I3(\COUNTER_REG_reg_n_0_[2] ),
        .O(\COUNTER_REG[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \COUNTER_REG_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(COUNTER_REG),
        .CLR(RST_IBUF),
        .D(\COUNTER_REG[0]_i_1_n_0 ),
        .Q(\COUNTER_REG_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \COUNTER_REG_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(COUNTER_REG),
        .CLR(RST_IBUF),
        .D(\COUNTER_REG[1]_i_1_n_0 ),
        .Q(\COUNTER_REG_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \COUNTER_REG_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(COUNTER_REG),
        .CLR(RST_IBUF),
        .D(\COUNTER_REG[2]_i_1_n_0 ),
        .Q(\COUNTER_REG_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \COUNTER_REG_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(COUNTER_REG),
        .CLR(RST_IBUF),
        .D(\COUNTER_REG[3]_i_2_n_0 ),
        .Q(\COUNTER_REG_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT1 #(
    .INIT(2'h1)) 
    CS_OBUF_inst_i_1
       (.I0(BUSY),
        .O(CS_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_SPI_REG_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[0]),
        .Q(\DATA_SPI_REG_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_SPI_REG_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[1]),
        .Q(data1));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_SPI_REG_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[2]),
        .Q(data2));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_SPI_REG_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[3]),
        .Q(data3));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_SPI_REG_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[4]),
        .Q(data4));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_SPI_REG_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[5]),
        .Q(data5));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_SPI_REG_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[6]),
        .Q(data6));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_SPI_REG_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[7]),
        .Q(data7));
  FDCE #(
    .INIT(1'b0)) 
    D_C_reg
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(Q),
        .Q(D_C_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h1)) 
    END_SPI_i_1
       (.I0(Q_0),
        .I1(BUSY),
        .O(END_SPI_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    END_SPI_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(END_SPI_i_1_n_0),
        .Q(END_SPI));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    FC_i_1
       (.I0(\CONT_reg_n_0_[1] ),
        .I1(\CONT_reg_n_0_[0] ),
        .I2(\CONT_reg_n_0_[2] ),
        .I3(\CONT[2]_i_2__0_n_0 ),
        .O(FC));
  FDCE #(
    .INIT(1'b0)) 
    FC_reg
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(FC),
        .Q(FC_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CS_OBUF),
        .Q(Q_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h7B)) 
    SCLK_AUX_i_1
       (.I0(FC_reg_n_0),
        .I1(BUSY),
        .I2(SCLK_OBUF),
        .O(SCLK_AUX_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SCLK_AUX_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(SCLK_AUX_i_1_n_0),
        .Q(SCLK_OBUF));
  LUT4 #(
    .INIT(16'h01FE)) 
    SDIN_i_1
       (.I0(\COUNTER_REG_reg_n_0_[0] ),
        .I1(\COUNTER_REG_reg_n_0_[1] ),
        .I2(\COUNTER_REG_reg_n_0_[2] ),
        .I3(\COUNTER_REG_reg_n_0_[3] ),
        .O(SDIN_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFAEEEE000A2222)) 
    SDIN_i_2
       (.I0(SDIN_i_3_n_0),
        .I1(\COUNTER_REG_reg_n_0_[3] ),
        .I2(\COUNTER_REG_reg_n_0_[1] ),
        .I3(\COUNTER_REG_reg_n_0_[0] ),
        .I4(\COUNTER_REG_reg_n_0_[2] ),
        .I5(SDIN_i_4_n_0),
        .O(SDIN));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    SDIN_i_3
       (.I0(data7),
        .I1(data6),
        .I2(\COUNTER_REG_reg_n_0_[0] ),
        .I3(\COUNTER_REG_reg_n_0_[1] ),
        .I4(data5),
        .I5(data4),
        .O(SDIN_i_3_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    SDIN_i_4
       (.I0(data3),
        .I1(data2),
        .I2(\COUNTER_REG_reg_n_0_[0] ),
        .I3(\COUNTER_REG_reg_n_0_[1] ),
        .I4(data1),
        .I5(\DATA_SPI_REG_reg_n_0_[0] ),
        .O(SDIN_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SDIN_reg
       (.C(CLK_IBUF_BUFG),
        .CE(SDIN_i_1_n_0),
        .CLR(RST_IBUF),
        .D(SDIN),
        .Q(SDIN_OBUF));
endmodule

(* ECO_CHECKSUM = "8839fdcd" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "1" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module top_system
   (RST,
    CLK,
    ROW,
    COL,
    DP,
    SEG_AG,
    AND_30,
    BUSY,
    RES,
    VBAT,
    VDD,
    D_C,
    CS,
    SDIN,
    SCLK);
  input RST;
  input CLK;
  input [3:0]ROW;
  output [3:0]COL;
  output DP;
  output [6:0]SEG_AG;
  output [3:0]AND_30;
  output BUSY;
  output RES;
  output VBAT;
  output VDD;
  output D_C;
  output CS;
  output SDIN;
  output SCLK;

  wire [3:0]AND_30;
  wire [3:0]AND_30_OBUF;
  wire BUSY;
  wire BUSY_OBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [3:0]COL;
  wire [3:0]COL_OBUF;
  wire CS;
  wire CS_OBUF;
  wire [7:0]DATA;
  wire DATA_OK;
  wire DATA_SPI_OK;
  wire DP;
  wire D_C;
  wire D_C_OBUF;
  wire END_SPI;
  wire [3:0]KEY_CODE;
  wire KEY_CODE_OK;
  wire RES;
  wire RES_OBUF;
  wire [3:0]ROW;
  wire [3:0]ROW_IBUF;
  wire RST;
  wire RST_IBUF;
  wire SCLK;
  wire SCLK_OBUF;
  wire SDIN;
  wire SDIN_OBUF;
  wire [6:0]SEG_AG;
  wire [6:0]SEG_AG_OBUF;
  wire U_OLED_n_10;
  wire U_OLED_n_11;
  wire U_OLED_n_12;
  wire U_OLED_n_5;
  wire U_OLED_n_6;
  wire U_OLED_n_7;
  wire U_OLED_n_8;
  wire U_OLED_n_9;
  wire VBAT;
  wire VDD;
  wire VDD_OBUF;
  wire lopt;
  wire p_1_in;
  wire NLW_U_OLED_VBAT_OBUF_UNCONNECTED;

initial begin
 $sdf_annotate("top_system_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \AND_30_OBUF[0]_inst 
       (.I(AND_30_OBUF[0]),
        .O(AND_30[0]));
  OBUF \AND_30_OBUF[1]_inst 
       (.I(AND_30_OBUF[1]),
        .O(AND_30[1]));
  OBUF \AND_30_OBUF[2]_inst 
       (.I(AND_30_OBUF[2]),
        .O(AND_30[2]));
  OBUF \AND_30_OBUF[3]_inst 
       (.I(AND_30_OBUF[3]),
        .O(AND_30[3]));
  OBUF BUSY_OBUF_inst
       (.I(BUSY_OBUF),
        .O(BUSY));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  OBUF \COL_OBUF[0]_inst 
       (.I(COL_OBUF[0]),
        .O(COL[0]));
  OBUF \COL_OBUF[1]_inst 
       (.I(COL_OBUF[1]),
        .O(COL[1]));
  OBUF \COL_OBUF[2]_inst 
       (.I(COL_OBUF[2]),
        .O(COL[2]));
  OBUF \COL_OBUF[3]_inst 
       (.I(COL_OBUF[3]),
        .O(COL[3]));
  OBUF CS_OBUF_inst
       (.I(CS_OBUF),
        .O(CS));
  OBUF DP_OBUF_inst
       (.I(1'b1),
        .O(DP));
  OBUF D_C_OBUF_inst
       (.I(D_C_OBUF),
        .O(D_C));
  OBUF RES_OBUF_inst
       (.I(RES_OBUF),
        .O(RES));
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
  OBUF SCLK_OBUF_inst
       (.I(SCLK_OBUF),
        .O(SCLK));
  OBUF SDIN_OBUF_inst
       (.I(SDIN_OBUF),
        .O(SDIN));
  OBUF \SEG_AG_OBUF[0]_inst 
       (.I(SEG_AG_OBUF[0]),
        .O(SEG_AG[0]));
  OBUF \SEG_AG_OBUF[1]_inst 
       (.I(SEG_AG_OBUF[1]),
        .O(SEG_AG[1]));
  OBUF \SEG_AG_OBUF[2]_inst 
       (.I(SEG_AG_OBUF[2]),
        .O(SEG_AG[2]));
  OBUF \SEG_AG_OBUF[3]_inst 
       (.I(SEG_AG_OBUF[3]),
        .O(SEG_AG[3]));
  OBUF \SEG_AG_OBUF[4]_inst 
       (.I(SEG_AG_OBUF[4]),
        .O(SEG_AG[4]));
  OBUF \SEG_AG_OBUF[5]_inst 
       (.I(SEG_AG_OBUF[5]),
        .O(SEG_AG[5]));
  OBUF \SEG_AG_OBUF[6]_inst 
       (.I(SEG_AG_OBUF[6]),
        .O(SEG_AG[6]));
  KYPD_controller U_KYPD
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .COL_OBUF(COL_OBUF),
        .KEY_CODE_OK(KEY_CODE_OK),
        .Q(KEY_CODE),
        .ROW_IBUF(ROW_IBUF),
        .RST_IBUF(RST_IBUF));
  mangm_KYPD U_MANGM
       (.AND_30_OBUF(AND_30_OBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D(KEY_CODE),
        .DATA_OK(DATA_OK),
        .KEY_CODE_OK(KEY_CODE_OK),
        .Q(DATA),
        .RST_IBUF(RST_IBUF),
        .SEG_AG_OBUF(SEG_AG_OBUF));
  oled_controller U_OLED
       (.BUSY_OBUF(BUSY_OBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D({U_OLED_n_5,U_OLED_n_6,U_OLED_n_7,U_OLED_n_8,U_OLED_n_9,U_OLED_n_10,U_OLED_n_11,U_OLED_n_12}),
        .DATA_OK(DATA_OK),
        .\DATA_reg[7] (DATA),
        .E(DATA_SPI_OK),
        .END_SPI(END_SPI),
        .Q(p_1_in),
        .RES_OBUF(RES_OBUF),
        .RST_IBUF(RST_IBUF),
        .VBAT_OBUF(NLW_U_OLED_VBAT_OBUF_UNCONNECTED),
        .VDD_OBUF(VDD_OBUF),
        .lopt(lopt));
  spi_controller U_SPI
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CS_OBUF(CS_OBUF),
        .D({U_OLED_n_5,U_OLED_n_6,U_OLED_n_7,U_OLED_n_8,U_OLED_n_9,U_OLED_n_10,U_OLED_n_11,U_OLED_n_12}),
        .D_C_OBUF(D_C_OBUF),
        .E(DATA_SPI_OK),
        .END_SPI(END_SPI),
        .Q(p_1_in),
        .RST_IBUF(RST_IBUF),
        .SCLK_OBUF(SCLK_OBUF),
        .SDIN_OBUF(SDIN_OBUF));
  OBUF VBAT_OBUF_inst
       (.I(lopt),
        .O(VBAT));
  OBUF VDD_OBUF_inst
       (.I(VDD_OBUF),
        .O(VDD));
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
