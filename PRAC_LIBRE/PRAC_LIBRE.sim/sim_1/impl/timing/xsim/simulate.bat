@echo off
REM ****************************************************************************
REM Vivado (TM) v2017.4 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed May 19 17:31:41 +0200 2021
REM SW Build 2086221 on Fri Dec 15 20:55:39 MST 2017
REM
REM Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
call xsim top_system_tb_time_impl -key {Post-Implementation:sim_1:Timing:top_system_tb} -tclbatch top_system_tb.tcl -view C:/PRACTICA_LIBRE/modelado_de_sistemas_computacionales/SOURCES/top_system_tb_time_impl_sim_temp_kypd_controller_bloque2_2.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
