////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_synthesis.v
// /___/   /\     Timestamp: Thu Jun 02 00:11:05 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim top.ngc top_synthesis.v 
// Device	: xa7a100t-2I-csg324
// Input file	: top.ngc
// Output file	: D:\EE310Projects\lab3\netgen\synthesis\top_synthesis.v
// # of Modules	: 1
// Design Name	: top
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top (
  Clock, Reset, BTN, SW, LCD_Control, Data_Out
);
  input Clock;
  input Reset;
  input BTN;
  input [3 : 0] SW;
  output [2 : 0] LCD_Control;
  output [3 : 0] Data_Out;
  wire SW_3_IBUF_0;
  wire SW_2_IBUF_1;
  wire SW_1_IBUF_2;
  wire SW_0_IBUF_3;
  wire Clock_BUFGP_4;
  wire Reset_IBUF_5;
  wire BTN_IBUF_6;
  wire \bc1/buttonCor_7 ;
  wire LCD_Control_0_OBUF_14;
  wire N1;
  wire \add1/ti/start_16 ;
  wire \add1/ti/_n0019_inv ;
  wire \bc1/Maccum_sum2_xor<9>12 ;
  wire \bc1/Maccum_sum2_xor<4>11_23 ;
  wire \bc1/Result<9>1 ;
  wire \bc1/Result<8>1 ;
  wire \bc1/Result<7>1 ;
  wire \bc1/Result<6>1 ;
  wire \bc1/Result<5>1 ;
  wire \bc1/Result<4>1 ;
  wire \bc1/Result<3>1 ;
  wire \bc1/Result<2>1 ;
  wire \bc1/Result<1>1 ;
  wire \bc1/_n0048_inv ;
  wire \bc1/_n0057_inv ;
  wire \bc1/buttonC_GND_2_o_MUX_17_o_56 ;
  wire \bc1/GND_2_o_GND_2_o_equal_3_o ;
  wire \bc1/buttonCor_GND_2_o_MUX_5_o ;
  wire \bc1/state_59 ;
  wire \bc1/buttonC_60 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT142 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT852_82 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT651 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT6411 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1711 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT273 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT661 ;
  wire \li1/_n0310_inv31 ;
  wire \li1/Mmux_state[5]_DR[7]_wide_mux_191_OUT21 ;
  wire \li1/_n0310_inv2_90 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1311 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT721 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT272 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1111_94 ;
  wire \li1/state_state<1>1_95 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT610 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT131 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT111 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<25> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<24>_101 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<24> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<23>_103 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<23> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<22>_105 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<22> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<21>_107 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<21> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<20>_109 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<20> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<19>_111 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<19> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<18>_113 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<18> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<17>_115 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<17> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<16>_117 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<16> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<15>_119 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<15> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<14>_121 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<14> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<13>_123 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<13> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<12>_125 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<12> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<11>_127 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<11> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<10>_129 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<10> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<9>_131 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<9> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<8>_133 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<8> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<7>_135 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<7> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<6>_137 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<6> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<5>_139 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<5> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<4>_141 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<4> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<3>_143 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<3> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<2>_145 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<2> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<1>_147 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<1> ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<0>_149 ;
  wire \li1/state_FSM_FFd2_150 ;
  wire \li1/state_FSM_FFd3_151 ;
  wire \li1/state_FSM_FFd4_152 ;
  wire \li1/state_FSM_FFd5_153 ;
  wire \li1/state_FSM_FFd6_154 ;
  wire \li1/state_FSM_FFd1-In_155 ;
  wire \li1/state_FSM_FFd2-In_156 ;
  wire \li1/state_FSM_FFd3-In ;
  wire \li1/state_FSM_FFd4-In_158 ;
  wire \li1/state_FSM_FFd5-In ;
  wire \li1/state_FSM_FFd6-In_160 ;
  wire \li1/_n0741_inv ;
  wire \li1/_n0310_inv ;
  wire \li1/_n0817_inv_163 ;
  wire \li1/_n0611_inv_164 ;
  wire \li1/GND_6_o_GND_6_o_equal_153_o ;
  wire \li1/state[5]_DR[7]_wide_mux_191_OUT<0> ;
  wire \li1/state[5]_DR[7]_wide_mux_191_OUT<1> ;
  wire \li1/state[5]_DR[7]_wide_mux_191_OUT<2> ;
  wire \li1/state[5]_DR[7]_wide_mux_191_OUT<3> ;
  wire \li1/state[5]_DR[7]_wide_mux_191_OUT<5> ;
  wire \li1/state[5]_DR[7]_wide_mux_191_OUT<7> ;
  wire \li1/state[5]_dataout[3]_wide_mux_190_OUT<0> ;
  wire \li1/state[5]_dataout[3]_wide_mux_190_OUT<1> ;
  wire \li1/state[5]_dataout[3]_wide_mux_190_OUT<2> ;
  wire \li1/state[5]_dataout[3]_wide_mux_190_OUT<3> ;
  wire \li1/state[5]_sel[2]_wide_mux_188_OUT<2> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<0> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<1> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<2> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<3> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<4> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<5> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<6> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<7> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<8> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<9> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<10> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<11> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<12> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<13> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<14> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<15> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<16> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<17> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<18> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<19> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<20> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<21> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<22> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<23> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<24> ;
  wire \li1/state[5]_delay[25]_wide_mux_187_OUT<25> ;
  wire \li1/state[5]_control[2]_wide_mux_189_OUT<1> ;
  wire \li1/state[5]_control[2]_wide_mux_189_OUT<2> ;
  wire \li1/state_FSM_FFd1_236 ;
  wire \li1/DR[4] ;
  wire \li1/DR[5] ;
  wire \li1/DR[7] ;
  wire \li1/DR[0] ;
  wire \li1/DR[1] ;
  wire \li1/DR[2] ;
  wire \li1/DR[3] ;
  wire N3;
  wire N5;
  wire N7;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT43 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT431_276 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT434 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT436 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT437_279 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT4310 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT69 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT691_282 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT694 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT695_284 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT696_285 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT73 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT732 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT89 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT891_289 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT892_290 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT893_291 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT894_292 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT895_293 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT77 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT772 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT773_296 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT774_297 ;
  wire N27;
  wire N28;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT93 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT931_301 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT932_302 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT933_303 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT81 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT812 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT813_306 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT814_307 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT815_308 ;
  wire \li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT1 ;
  wire \li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT11_310 ;
  wire \li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT12_311 ;
  wire \li1/state_FSM_FFd5-In1_312 ;
  wire \li1/state_FSM_FFd5-In2_313 ;
  wire \li1/state_FSM_FFd5-In4_314 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT652_315 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT656_316 ;
  wire N30;
  wire N32;
  wire N34;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT22 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT222 ;
  wire N36;
  wire N40;
  wire N42;
  wire \li1/state_FSM_FFd3-In1_325 ;
  wire \li1/state_FSM_FFd3-In2_326 ;
  wire \li1/state_FSM_FFd3-In3_327 ;
  wire \li1/state_FSM_FFd3-In4_328 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT85 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT851_330 ;
  wire N44;
  wire N46;
  wire N48;
  wire N49;
  wire N50;
  wire N51;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT7 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT75 ;
  wire \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT76_339 ;
  wire \li1/_n0310_inv1_340 ;
  wire \li1/_n0310_inv3_341 ;
  wire \li1/_n0310_inv4_342 ;
  wire \li1/_n0310_inv5 ;
  wire \li1/GND_6_o_GND_6_o_equal_153_o<25>1_345 ;
  wire \li1/GND_6_o_GND_6_o_equal_153_o<25>2_346 ;
  wire \li1/GND_6_o_GND_6_o_equal_153_o<25>3_347 ;
  wire \bc1/Mcount_counter_cy<8>_rt_362 ;
  wire \bc1/Mcount_counter_cy<7>_rt_363 ;
  wire \bc1/Mcount_counter_cy<6>_rt_364 ;
  wire \bc1/Mcount_counter_cy<5>_rt_365 ;
  wire \bc1/Mcount_counter_cy<4>_rt_366 ;
  wire \bc1/Mcount_counter_cy<3>_rt_367 ;
  wire \bc1/Mcount_counter_cy<2>_rt_368 ;
  wire \bc1/Mcount_counter_cy<1>_rt_369 ;
  wire \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<0>_rt_370 ;
  wire \bc1/Mcount_counter_xor<9>_rt_371 ;
  wire N57;
  wire N59;
  wire N61;
  wire N65;
  wire N66;
  wire N74;
  wire N75;
  wire N77;
  wire N79;
  wire N80;
  wire N82;
  wire N83;
  wire N85;
  wire N92;
  wire N93;
  wire N95;
  wire N98;
  wire N99;
  wire N101;
  wire N102;
  wire N103;
  wire N105;
  wire N107;
  wire N108;
  wire N110;
  wire N111;
  wire N112;
  wire N113;
  wire N115;
  wire N116;
  wire N117;
  wire N119;
  wire N120;
  wire N121;
  wire N122;
  wire N124;
  wire N125;
  wire N126;
  wire N128;
  wire \li1/state_FSM_FFd2_1_411 ;
  wire \li1/state_state<4>1_412 ;
  wire \li1/GND_6_o_GND_6_o_equal_153_o<25>5_413 ;
  wire \li1/_n0381_inv_rstpot_414 ;
  wire \li1/sel_0_dpot_415 ;
  wire \li1/sel_1_dpot_416 ;
  wire \li1/sel_2_dpot_417 ;
  wire \li1/state_FSM_FFd5_1_418 ;
  wire \li1/state_FSM_FFd6_1_419 ;
  wire \li1/GND_6_o_GND_6_o_equal_153_o<25>51 ;
  wire \li1/state_FSM_FFd3_1_421 ;
  wire N132;
  wire N133;
  wire N134;
  wire N135;
  wire [3 : 0] \li1/dataout ;
  wire [2 : 1] \li1/control ;
  wire [1 : 0] \add1/ti/operand2 ;
  wire [1 : 0] \add1/ti/operand1 ;
  wire [0 : 0] \bc1/Maccum_sum2_lut ;
  wire [8 : 0] \bc1/Mcount_counter_cy ;
  wire [0 : 0] \bc1/Mcount_counter_lut ;
  wire [9 : 0] \bc1/Result ;
  wire [9 : 0] \bc1/sum2 ;
  wire [9 : 0] \bc1/counter ;
  wire [2 : 0] \li1/sel ;
  wire [25 : 0] \li1/GND_6_o_GND_6_o_sub_184_OUT ;
  wire [1 : 1] \li1/_n0172 ;
  wire [4 : 1] \li1/state ;
  wire [25 : 0] \li1/delay ;
  wire [25 : 25] \li1/GND_6_o_GND_6_o_equal_153_o_0 ;
  GND   XST_GND (
    .G(LCD_Control_0_OBUF_14)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDE   \add1/ti/operand1_1  (
    .C(Clock_BUFGP_4),
    .CE(\add1/ti/_n0019_inv ),
    .D(SW_1_IBUF_2),
    .Q(\add1/ti/operand1 [1])
  );
  FDE   \add1/ti/operand1_0  (
    .C(Clock_BUFGP_4),
    .CE(\add1/ti/_n0019_inv ),
    .D(SW_0_IBUF_3),
    .Q(\add1/ti/operand1 [0])
  );
  FDCE   \add1/ti/start  (
    .C(Clock_BUFGP_4),
    .CE(\bc1/buttonCor_7 ),
    .CLR(Reset_IBUF_5),
    .D(N1),
    .Q(\add1/ti/start_16 )
  );
  FDE   \add1/ti/operand2_1  (
    .C(Clock_BUFGP_4),
    .CE(\add1/ti/_n0019_inv ),
    .D(SW_3_IBUF_0),
    .Q(\add1/ti/operand2 [1])
  );
  FDE   \add1/ti/operand2_0  (
    .C(Clock_BUFGP_4),
    .CE(\add1/ti/_n0019_inv ),
    .D(SW_2_IBUF_1),
    .Q(\add1/ti/operand2 [0])
  );
  XORCY   \bc1/Mcount_counter_xor<9>  (
    .CI(\bc1/Mcount_counter_cy [8]),
    .LI(\bc1/Mcount_counter_xor<9>_rt_371 ),
    .O(\bc1/Result [9])
  );
  XORCY   \bc1/Mcount_counter_xor<8>  (
    .CI(\bc1/Mcount_counter_cy [7]),
    .LI(\bc1/Mcount_counter_cy<8>_rt_362 ),
    .O(\bc1/Result [8])
  );
  MUXCY   \bc1/Mcount_counter_cy<8>  (
    .CI(\bc1/Mcount_counter_cy [7]),
    .DI(LCD_Control_0_OBUF_14),
    .S(\bc1/Mcount_counter_cy<8>_rt_362 ),
    .O(\bc1/Mcount_counter_cy [8])
  );
  XORCY   \bc1/Mcount_counter_xor<7>  (
    .CI(\bc1/Mcount_counter_cy [6]),
    .LI(\bc1/Mcount_counter_cy<7>_rt_363 ),
    .O(\bc1/Result [7])
  );
  MUXCY   \bc1/Mcount_counter_cy<7>  (
    .CI(\bc1/Mcount_counter_cy [6]),
    .DI(LCD_Control_0_OBUF_14),
    .S(\bc1/Mcount_counter_cy<7>_rt_363 ),
    .O(\bc1/Mcount_counter_cy [7])
  );
  XORCY   \bc1/Mcount_counter_xor<6>  (
    .CI(\bc1/Mcount_counter_cy [5]),
    .LI(\bc1/Mcount_counter_cy<6>_rt_364 ),
    .O(\bc1/Result [6])
  );
  MUXCY   \bc1/Mcount_counter_cy<6>  (
    .CI(\bc1/Mcount_counter_cy [5]),
    .DI(LCD_Control_0_OBUF_14),
    .S(\bc1/Mcount_counter_cy<6>_rt_364 ),
    .O(\bc1/Mcount_counter_cy [6])
  );
  XORCY   \bc1/Mcount_counter_xor<5>  (
    .CI(\bc1/Mcount_counter_cy [4]),
    .LI(\bc1/Mcount_counter_cy<5>_rt_365 ),
    .O(\bc1/Result [5])
  );
  MUXCY   \bc1/Mcount_counter_cy<5>  (
    .CI(\bc1/Mcount_counter_cy [4]),
    .DI(LCD_Control_0_OBUF_14),
    .S(\bc1/Mcount_counter_cy<5>_rt_365 ),
    .O(\bc1/Mcount_counter_cy [5])
  );
  XORCY   \bc1/Mcount_counter_xor<4>  (
    .CI(\bc1/Mcount_counter_cy [3]),
    .LI(\bc1/Mcount_counter_cy<4>_rt_366 ),
    .O(\bc1/Result [4])
  );
  MUXCY   \bc1/Mcount_counter_cy<4>  (
    .CI(\bc1/Mcount_counter_cy [3]),
    .DI(LCD_Control_0_OBUF_14),
    .S(\bc1/Mcount_counter_cy<4>_rt_366 ),
    .O(\bc1/Mcount_counter_cy [4])
  );
  XORCY   \bc1/Mcount_counter_xor<3>  (
    .CI(\bc1/Mcount_counter_cy [2]),
    .LI(\bc1/Mcount_counter_cy<3>_rt_367 ),
    .O(\bc1/Result [3])
  );
  MUXCY   \bc1/Mcount_counter_cy<3>  (
    .CI(\bc1/Mcount_counter_cy [2]),
    .DI(LCD_Control_0_OBUF_14),
    .S(\bc1/Mcount_counter_cy<3>_rt_367 ),
    .O(\bc1/Mcount_counter_cy [3])
  );
  XORCY   \bc1/Mcount_counter_xor<2>  (
    .CI(\bc1/Mcount_counter_cy [1]),
    .LI(\bc1/Mcount_counter_cy<2>_rt_368 ),
    .O(\bc1/Result [2])
  );
  MUXCY   \bc1/Mcount_counter_cy<2>  (
    .CI(\bc1/Mcount_counter_cy [1]),
    .DI(LCD_Control_0_OBUF_14),
    .S(\bc1/Mcount_counter_cy<2>_rt_368 ),
    .O(\bc1/Mcount_counter_cy [2])
  );
  XORCY   \bc1/Mcount_counter_xor<1>  (
    .CI(\bc1/Mcount_counter_cy [0]),
    .LI(\bc1/Mcount_counter_cy<1>_rt_369 ),
    .O(\bc1/Result [1])
  );
  MUXCY   \bc1/Mcount_counter_cy<1>  (
    .CI(\bc1/Mcount_counter_cy [0]),
    .DI(LCD_Control_0_OBUF_14),
    .S(\bc1/Mcount_counter_cy<1>_rt_369 ),
    .O(\bc1/Mcount_counter_cy [1])
  );
  XORCY   \bc1/Mcount_counter_xor<0>  (
    .CI(LCD_Control_0_OBUF_14),
    .LI(\bc1/Mcount_counter_lut [0]),
    .O(\bc1/Result [0])
  );
  MUXCY   \bc1/Mcount_counter_cy<0>  (
    .CI(LCD_Control_0_OBUF_14),
    .DI(N1),
    .S(\bc1/Mcount_counter_lut [0]),
    .O(\bc1/Mcount_counter_cy [0])
  );
  FDC   \bc1/sum2_9  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result<9>1 ),
    .Q(\bc1/sum2 [9])
  );
  FDC   \bc1/sum2_8  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result<8>1 ),
    .Q(\bc1/sum2 [8])
  );
  FDC   \bc1/sum2_7  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result<7>1 ),
    .Q(\bc1/sum2 [7])
  );
  FDC   \bc1/sum2_6  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result<6>1 ),
    .Q(\bc1/sum2 [6])
  );
  FDC   \bc1/sum2_5  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result<5>1 ),
    .Q(\bc1/sum2 [5])
  );
  FDC   \bc1/sum2_4  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result<4>1 ),
    .Q(\bc1/sum2 [4])
  );
  FDC   \bc1/sum2_3  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result<3>1 ),
    .Q(\bc1/sum2 [3])
  );
  FDC   \bc1/sum2_2  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result<2>1 ),
    .Q(\bc1/sum2 [2])
  );
  FDC   \bc1/sum2_1  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result<1>1 ),
    .Q(\bc1/sum2 [1])
  );
  FDC   \bc1/sum2_0  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Maccum_sum2_lut [0]),
    .Q(\bc1/sum2 [0])
  );
  FDC   \bc1/counter_9  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result [9]),
    .Q(\bc1/counter [9])
  );
  FDC   \bc1/counter_8  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result [8]),
    .Q(\bc1/counter [8])
  );
  FDC   \bc1/counter_7  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result [7]),
    .Q(\bc1/counter [7])
  );
  FDC   \bc1/counter_6  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result [6]),
    .Q(\bc1/counter [6])
  );
  FDC   \bc1/counter_5  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result [5]),
    .Q(\bc1/counter [5])
  );
  FDC   \bc1/counter_4  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result [4]),
    .Q(\bc1/counter [4])
  );
  FDC   \bc1/counter_3  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result [3]),
    .Q(\bc1/counter [3])
  );
  FDC   \bc1/counter_2  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result [2]),
    .Q(\bc1/counter [2])
  );
  FDC   \bc1/counter_1  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result [1]),
    .Q(\bc1/counter [1])
  );
  FDC   \bc1/counter_0  (
    .C(Clock_BUFGP_4),
    .CLR(Reset_IBUF_5),
    .D(\bc1/Result [0]),
    .Q(\bc1/counter [0])
  );
  FDCE   \bc1/buttonC  (
    .C(Clock_BUFGP_4),
    .CE(\bc1/GND_2_o_GND_2_o_equal_3_o ),
    .CLR(Reset_IBUF_5),
    .D(\bc1/buttonC_GND_2_o_MUX_17_o_56 ),
    .Q(\bc1/buttonC_60 )
  );
  FDCE   \bc1/buttonCor  (
    .C(Clock_BUFGP_4),
    .CE(\bc1/_n0048_inv ),
    .CLR(Reset_IBUF_5),
    .D(\bc1/buttonCor_GND_2_o_MUX_5_o ),
    .Q(\bc1/buttonCor_7 )
  );
  FDCE   \bc1/state  (
    .C(Clock_BUFGP_4),
    .CE(\bc1/_n0057_inv ),
    .CLR(Reset_IBUF_5),
    .D(\bc1/buttonCor_GND_2_o_MUX_5_o ),
    .Q(\bc1/state_59 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<25>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<24>_101 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<25> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [25])
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<24>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<23>_103 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<24> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [24])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<24>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<23>_103 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<24> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<24>_101 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<23>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<22>_105 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<23> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [23])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<23>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<22>_105 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<23> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<23>_103 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<22>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<21>_107 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<22> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [22])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<22>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<21>_107 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<22> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<22>_105 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<21>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<20>_109 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<21> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [21])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<21>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<20>_109 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<21> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<21>_107 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<20>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<19>_111 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<20> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [20])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<20>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<19>_111 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<20> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<20>_109 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<19>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<18>_113 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<19> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [19])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<19>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<18>_113 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<19> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<19>_111 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<18>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<17>_115 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<18> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [18])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<18>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<17>_115 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<18> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<18>_113 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<17>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<16>_117 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<17> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [17])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<17>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<16>_117 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<17> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<17>_115 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<16>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<15>_119 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<16> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [16])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<16>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<15>_119 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<16> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<16>_117 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<15>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<14>_121 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<15> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [15])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<15>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<14>_121 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<15> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<15>_119 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<14>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<13>_123 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<14> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [14])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<14>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<13>_123 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<14> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<14>_121 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<13>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<12>_125 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<13> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [13])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<13>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<12>_125 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<13> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<13>_123 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<12>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<11>_127 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<12> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [12])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<12>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<11>_127 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<12> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<12>_125 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<11>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<10>_129 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<11> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [11])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<11>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<10>_129 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<11> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<11>_127 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<10>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<9>_131 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<10> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [10])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<10>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<9>_131 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<10> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<10>_129 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<9>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<8>_133 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<9> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [9])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<9>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<8>_133 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<9> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<9>_131 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<8>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<7>_135 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<8> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [8])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<8>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<7>_135 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<8> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<8>_133 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<7>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<6>_137 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<7> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [7])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<7>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<6>_137 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<7> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<7>_135 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<6>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<5>_139 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<6> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [6])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<6>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<5>_139 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<6> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<6>_137 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<5>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<4>_141 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<5> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [5])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<5>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<4>_141 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<5> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<5>_139 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<4>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<3>_143 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<4> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [4])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<4>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<3>_143 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<4> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<4>_141 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<3>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<2>_145 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<3> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [3])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<3>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<2>_145 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<3> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<3>_143 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<2>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<1>_147 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<2> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [2])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<2>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<1>_147 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<2> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<2>_145 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<1>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<0>_149 ),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<1> ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [1])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<1>  (
    .CI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<0>_149 ),
    .DI(N1),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<1> ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<1>_147 )
  );
  XORCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_xor<0>  (
    .CI(N1),
    .LI(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<0>_rt_370 ),
    .O(\li1/GND_6_o_GND_6_o_sub_184_OUT [0])
  );
  MUXCY   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<0>  (
    .CI(N1),
    .DI(LCD_Control_0_OBUF_14),
    .S(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<0>_rt_370 ),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<0>_149 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \li1/state_FSM_FFd1  (
    .C(Clock_BUFGP_4),
    .D(\li1/state_FSM_FFd1-In_155 ),
    .Q(\li1/state_FSM_FFd1_236 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \li1/state_FSM_FFd2  (
    .C(Clock_BUFGP_4),
    .D(\li1/state_FSM_FFd2-In_156 ),
    .Q(\li1/state_FSM_FFd2_150 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \li1/state_FSM_FFd3  (
    .C(Clock_BUFGP_4),
    .D(\li1/state_FSM_FFd3-In ),
    .Q(\li1/state_FSM_FFd3_151 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \li1/state_FSM_FFd4  (
    .C(Clock_BUFGP_4),
    .D(\li1/state_FSM_FFd4-In_158 ),
    .Q(\li1/state_FSM_FFd4_152 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \li1/state_FSM_FFd5  (
    .C(Clock_BUFGP_4),
    .D(\li1/state_FSM_FFd5-In ),
    .Q(\li1/state_FSM_FFd5_153 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \li1/state_FSM_FFd6  (
    .C(Clock_BUFGP_4),
    .D(\li1/state_FSM_FFd6-In_160 ),
    .Q(\li1/state_FSM_FFd6_154 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/dataout_3  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0741_inv ),
    .D(\li1/state[5]_dataout[3]_wide_mux_190_OUT<3> ),
    .Q(\li1/dataout [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/dataout_2  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0741_inv ),
    .D(\li1/state[5]_dataout[3]_wide_mux_190_OUT<2> ),
    .Q(\li1/dataout [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/dataout_1  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0741_inv ),
    .D(\li1/state[5]_dataout[3]_wide_mux_190_OUT<1> ),
    .Q(\li1/dataout [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/dataout_0  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0741_inv ),
    .D(\li1/state[5]_dataout[3]_wide_mux_190_OUT<0> ),
    .Q(\li1/dataout [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_25  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<25> ),
    .Q(\li1/delay [25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_24  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<24> ),
    .Q(\li1/delay [24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_23  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<23> ),
    .Q(\li1/delay [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_22  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<22> ),
    .Q(\li1/delay [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_21  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<21> ),
    .Q(\li1/delay [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_20  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<20> ),
    .Q(\li1/delay [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_19  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<19> ),
    .Q(\li1/delay [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_18  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<18> ),
    .Q(\li1/delay [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_17  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<17> ),
    .Q(\li1/delay [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_16  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<16> ),
    .Q(\li1/delay [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_15  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<15> ),
    .Q(\li1/delay [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_14  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<14> ),
    .Q(\li1/delay [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_13  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<13> ),
    .Q(\li1/delay [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_12  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<12> ),
    .Q(\li1/delay [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_11  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<11> ),
    .Q(\li1/delay [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_10  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<10> ),
    .Q(\li1/delay [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_9  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<9> ),
    .Q(\li1/delay [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_8  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<8> ),
    .Q(\li1/delay [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_7  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<7> ),
    .Q(\li1/delay [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_6  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<6> ),
    .Q(\li1/delay [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_5  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<5> ),
    .Q(\li1/delay [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_4  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<4> ),
    .Q(\li1/delay [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_3  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<3> ),
    .Q(\li1/delay [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_2  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<2> ),
    .Q(\li1/delay [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_1  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<1> ),
    .Q(\li1/delay [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/delay_0  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0310_inv ),
    .D(\li1/state[5]_delay[25]_wide_mux_187_OUT<0> ),
    .Q(\li1/delay [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/DR_7  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0817_inv_163 ),
    .D(\li1/state[5]_DR[7]_wide_mux_191_OUT<7> ),
    .Q(\li1/DR[7] )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/DR_5  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0817_inv_163 ),
    .D(\li1/state[5]_DR[7]_wide_mux_191_OUT<5> ),
    .Q(\li1/DR[5] )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/DR_4  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0817_inv_163 ),
    .D(\li1/state_FSM_FFd1_236 ),
    .Q(\li1/DR[4] )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/DR_3  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0817_inv_163 ),
    .D(\li1/state[5]_DR[7]_wide_mux_191_OUT<3> ),
    .Q(\li1/DR[3] )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/DR_2  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0817_inv_163 ),
    .D(\li1/state[5]_DR[7]_wide_mux_191_OUT<2> ),
    .Q(\li1/DR[2] )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/DR_1  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0817_inv_163 ),
    .D(\li1/state[5]_DR[7]_wide_mux_191_OUT<1> ),
    .Q(\li1/DR[1] )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/DR_0  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0817_inv_163 ),
    .D(\li1/state[5]_DR[7]_wide_mux_191_OUT<0> ),
    .Q(\li1/DR[0] )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/control_2  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0611_inv_164 ),
    .D(\li1/state[5]_control[2]_wide_mux_189_OUT<2> ),
    .Q(\li1/control [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/control_1  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0611_inv_164 ),
    .D(\li1/state[5]_control[2]_wide_mux_189_OUT<1> ),
    .Q(\li1/control [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/sel_2  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0172 [1]),
    .D(\li1/sel_2_dpot_417 ),
    .Q(\li1/sel [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/sel_1  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0172 [1]),
    .D(\li1/sel_1_dpot_416 ),
    .Q(\li1/sel [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \li1/sel_0  (
    .C(Clock_BUFGP_4),
    .CE(\li1/_n0172 [1]),
    .D(\li1/sel_0_dpot_415 ),
    .Q(\li1/sel [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \add1/ti/_n0019_inv1  (
    .I0(Reset_IBUF_5),
    .I1(\bc1/buttonCor_7 ),
    .O(\add1/ti/_n0019_inv )
  );
  LUT5 #(
    .INIT ( 32'h4E0A4602 ))
  \bc1/Maccum_sum2_xor<5>11  (
    .I0(\bc1/sum2 [5]),
    .I1(\bc1/sum2 [4]),
    .I2(\bc1/GND_2_o_GND_2_o_equal_3_o ),
    .I3(\bc1/Maccum_sum2_xor<9>12 ),
    .I4(\bc1/Maccum_sum2_xor<4>11_23 ),
    .O(\bc1/Result<5>1 )
  );
  LUT4 #(
    .INIT ( 16'h7250 ))
  \bc1/Maccum_sum2_xor<4>11  (
    .I0(\bc1/sum2 [4]),
    .I1(\bc1/GND_2_o_GND_2_o_equal_3_o ),
    .I2(\bc1/Maccum_sum2_xor<9>12 ),
    .I3(\bc1/Maccum_sum2_xor<4>11_23 ),
    .O(\bc1/Result<4>1 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \bc1/_n0048_inv1  (
    .I0(\bc1/state_59 ),
    .I1(\bc1/buttonC_60 ),
    .O(\bc1/_n0048_inv )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \bc1/_n0057_inv1  (
    .I0(\bc1/state_59 ),
    .I1(\bc1/buttonC_60 ),
    .O(\bc1/_n0057_inv )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \bc1/Maccum_sum2_lut<0>1  (
    .I0(\bc1/GND_2_o_GND_2_o_equal_3_o ),
    .I1(\bc1/sum2 [0]),
    .I2(BTN_IBUF_6),
    .O(\bc1/Maccum_sum2_lut [0])
  );
  LUT5 #(
    .INIT ( 32'hCCC48880 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT31  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [0]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT6411 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1711 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT111 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hCCC48880 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT251  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [15]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT6411 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1711 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT111 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<15> )
  );
  LUT5 #(
    .INIT ( 32'hCCC48880 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT361  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [18]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT6411 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1711 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT111 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<18> )
  );
  LUT5 #(
    .INIT ( 32'hCCC48880 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT461  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [20]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT6411 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1711 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT111 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<20> )
  );
  LUT5 #(
    .INIT ( 32'hCCC48880 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT551  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [23]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT6411 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1711 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT111 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<23> )
  );
  LUT5 #(
    .INIT ( 32'hCCC48880 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT581  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [24]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT6411 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1711 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT111 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<24> )
  );
  LUT3 #(
    .INIT ( 8'h19 ))
  \li1/state_state<1>11  (
    .I0(\li1/state_FSM_FFd2_150 ),
    .I1(\li1/state_FSM_FFd4_152 ),
    .I2(\li1/state_FSM_FFd1_236 ),
    .O(\li1/state_state<1>1_95 )
  );
  LUT6 #(
    .INIT ( 64'h295A09AA295A795A ))
  \li1/state_state<2>1  (
    .I0(\li1/state_FSM_FFd4_152 ),
    .I1(\li1/state_FSM_FFd1_236 ),
    .I2(\li1/state_FSM_FFd3_151 ),
    .I3(\li1/state_FSM_FFd2_150 ),
    .I4(\li1/state_FSM_FFd6_154 ),
    .I5(\li1/state_FSM_FFd5_153 ),
    .O(\li1/state [2])
  );
  LUT6 #(
    .INIT ( 64'hB4B94944BEB36B66 ))
  \li1/state_state<1>1  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd4_152 ),
    .I2(\li1/state_FSM_FFd1_236 ),
    .I3(\li1/state_FSM_FFd2_150 ),
    .I4(\li1/state_FSM_FFd5_153 ),
    .I5(\li1/state_FSM_FFd6_154 ),
    .O(\li1/state [1])
  );
  LUT4 #(
    .INIT ( 16'h000E ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT17111  (
    .I0(\li1/state [2]),
    .I1(\li1/state [1]),
    .I2(\li1/state [3]),
    .I3(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1711 )
  );
  LUT5 #(
    .INIT ( 32'hFCF4F8F0 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT491  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [21]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT142 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT131 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT111 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<21> )
  );
  LUT5 #(
    .INIT ( 32'hFCF4F8F0 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT521  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [22]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT142 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT131 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT111 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<22> )
  );
  LUT5 #(
    .INIT ( 32'hFCF4F8F0 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT611  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [25]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT142 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT131 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT111 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<25> )
  );
  LUT5 #(
    .INIT ( 32'hFCF4F8F0 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT101  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [11]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT142 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT131 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT111 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'hC9C9C9C9C900C9FF ))
  \li1/Mmux_state[5]_sel[2]_wide_mux_188_OUT31  (
    .I0(\li1/sel [1]),
    .I1(\li1/sel [2]),
    .I2(\li1/sel [0]),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/state [4]),
    .I5(\li1/state [1]),
    .O(\li1/state[5]_sel[2]_wide_mux_188_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h88A08880 ))
  \li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT31  (
    .I0(\li1/DR[2] ),
    .I1(\li1/state [2]),
    .I2(\li1/state [3]),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/state [4]),
    .O(\li1/state[5]_dataout[3]_wide_mux_190_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hCDCDC8CDEFFF4005 ))
  \li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT21  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/DR[1] ),
    .I2(\li1/state [3]),
    .I3(\li1/state [4]),
    .I4(\li1/DR[5] ),
    .I5(\li1/state [2]),
    .O(\li1/state[5]_dataout[3]_wide_mux_190_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hA0B0 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT64111  (
    .I0(\li1/_n0172 [1]),
    .I1(\li1/state [1]),
    .I2(\li1/state [3]),
    .I3(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT6411 )
  );
  LUT6 #(
    .INIT ( 64'hDCDCDC54D8D8D850 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT181  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [13]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT272 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT6411 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1711 ),
    .I5(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT222 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<13> )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT7211  (
    .I0(\li1/_n0172 [1]),
    .I1(\li1/state [1]),
    .I2(\li1/state [3]),
    .I3(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT721 )
  );
  LUT6 #(
    .INIT ( 64'h08084800AAAAEAA2 ))
  \li1/state_state<4>1  (
    .I0(\li1/state_FSM_FFd2_1_411 ),
    .I1(\li1/state_FSM_FFd3_1_421 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd5_153 ),
    .I4(\li1/state_FSM_FFd6_154 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(\li1/state [4])
  );
  LUT6 #(
    .INIT ( 64'hFDFCF5F4FDF8F5F0 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT331  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [17]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT142 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT272 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT131 ),
    .I5(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT222 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<17> )
  );
  LUT5 #(
    .INIT ( 32'h2022AAAA ))
  \li1/state_state[5]_control[2]_wide_mux_189_OUT<1>1  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/state_FSM_FFd3_151 ),
    .I2(\li1/state_FSM_FFd6_154 ),
    .I3(\li1/state_FSM_FFd5_153 ),
    .I4(\li1/state_FSM_FFd4_152 ),
    .O(\li1/state[5]_control[2]_wide_mux_189_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1421  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd1_236 ),
    .I2(\li1/_n0172 [1]),
    .I3(\li1/state [1]),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT142 )
  );
  LUT6 #(
    .INIT ( 64'h544060F614401696 ))
  \li1/state_state[5]_control[2]_wide_mux_189_OUT<2>1  (
    .I0(\li1/state_FSM_FFd4_152 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd6_154 ),
    .I3(\li1/state_FSM_FFd2_150 ),
    .I4(\li1/state_FSM_FFd3_151 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(\li1/state[5]_control[2]_wide_mux_189_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA6466666E ))
  \li1/state_state<3>1  (
    .I0(\li1/state_FSM_FFd3_1_421 ),
    .I1(\li1/state_FSM_FFd2_150 ),
    .I2(\li1/state_FSM_FFd6_154 ),
    .I3(\li1/state_FSM_FFd4_152 ),
    .I4(\li1/state_FSM_FFd5_153 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(\li1/state [3])
  );
  LUT6 #(
    .INIT ( 64'hEFEAEEE0202A2220 ))
  \li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT41  (
    .I0(\li1/DR[7] ),
    .I1(\li1/state [2]),
    .I2(\li1/state_FSM_FFd1_236 ),
    .I3(\li1/state [3]),
    .I4(\li1/state [4]),
    .I5(\li1/DR[3] ),
    .O(\li1/state[5]_dataout[3]_wide_mux_190_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \li1/Mmux_state[5]_DR[7]_wide_mux_191_OUT231  (
    .I0(\li1/sel [1]),
    .I1(\li1/sel [2]),
    .I2(\li1/sel [0]),
    .O(\li1/Mmux_state[5]_DR[7]_wide_mux_191_OUT21 )
  );
  LUT5 #(
    .INIT ( 32'h11110100 ))
  \li1/Mmux_state[5]_DR[7]_wide_mux_191_OUT41  (
    .I0(\li1/state [4]),
    .I1(\li1/state_FSM_FFd1_236 ),
    .I2(\li1/sel [0]),
    .I3(\li1/sel [1]),
    .I4(\li1/sel [2]),
    .O(\li1/state[5]_DR[7]_wide_mux_191_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \li1/Mmux_state[5]_DR[7]_wide_mux_191_OUT61  (
    .I0(\li1/state [4]),
    .I1(\li1/sel [2]),
    .I2(\li1/state_FSM_FFd1_236 ),
    .O(\li1/state[5]_DR[7]_wide_mux_191_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \li1/Mmux_state[5]_DR[7]_wide_mux_191_OUT81  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/state [4]),
    .O(\li1/state[5]_DR[7]_wide_mux_191_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \bc1/Maccum_sum2_xor<9>1_SW0  (
    .I0(\bc1/sum2 [8]),
    .I1(\bc1/sum2 [7]),
    .O(N3)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \bc1/buttonC_GND_2_o_MUX_17_o_SW0  (
    .I0(\bc1/sum2 [8]),
    .I1(\bc1/sum2 [7]),
    .I2(\bc1/sum2 [6]),
    .I3(\bc1/sum2 [5]),
    .I4(\bc1/sum2 [4]),
    .I5(\bc1/sum2 [9]),
    .O(N5)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \bc1/buttonC_GND_2_o_MUX_17_o  (
    .I0(N5),
    .I1(\bc1/sum2 [0]),
    .I2(\bc1/sum2 [2]),
    .I3(\bc1/sum2 [1]),
    .I4(\bc1/sum2 [3]),
    .I5(\bc1/GND_2_o_GND_2_o_equal_3_o ),
    .O(\bc1/buttonC_GND_2_o_MUX_17_o_56 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \bc1/GND_2_o_GND_2_o_equal_3_o<9>_SW0  (
    .I0(\bc1/counter [4]),
    .I1(\bc1/counter [3]),
    .I2(\bc1/counter [2]),
    .I3(\bc1/counter [1]),
    .I4(\bc1/counter [0]),
    .O(N7)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \bc1/GND_2_o_GND_2_o_equal_3_o<9>  (
    .I0(\bc1/counter [9]),
    .I1(\bc1/counter [8]),
    .I2(\bc1/counter [7]),
    .I3(\bc1/counter [6]),
    .I4(\bc1/counter [5]),
    .I5(N7),
    .O(\bc1/GND_2_o_GND_2_o_equal_3_o )
  );
  LUT6 #(
    .INIT ( 64'h0000A0AA00000022 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT438  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/state [2]),
    .I2(\li1/_n0172 [1]),
    .I3(\li1/state [1]),
    .I4(\li1/state [3]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT437_279 )
  );
  LUT6 #(
    .INIT ( 64'hFFF5FFF5FFF4FFF0 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT4312  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/state [4]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT437_279 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT436 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT4310 ),
    .I5(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT434 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hCF020302CFFA0000 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT731  (
    .I0(\li1/state [2]),
    .I1(\li1/_n0172 [1]),
    .I2(\li1/state [1]),
    .I3(\li1/state [3]),
    .I4(\li1/GND_6_o_GND_6_o_sub_184_OUT [4]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT73 )
  );
  LUT6 #(
    .INIT ( 64'hAAFAAAFB00000033 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT892  (
    .I0(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT89 ),
    .I1(\li1/_n0310_inv2_90 ),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT661 ),
    .I3(\li1/state [4]),
    .I4(\li1/state [3]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT891_289 )
  );
  LUT6 #(
    .INIT ( 64'h808A8080CCCEEECC ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT893  (
    .I0(\li1/state [4]),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1111_94 ),
    .I2(\li1/state [1]),
    .I3(\li1/state [3]),
    .I4(\li1/state [2]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT892_290 )
  );
  LUT6 #(
    .INIT ( 64'h0E0E0E0E0E0F0E0E ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT895  (
    .I0(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT893_291 ),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT661 ),
    .I2(\li1/state [4]),
    .I3(\li1/state [3]),
    .I4(\li1/_n0172 [1]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT894_292 )
  );
  LUT6 #(
    .INIT ( 64'hFEFEFEFA54545450 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT897  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [8]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT891_289 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT894_292 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT892_290 ),
    .I5(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT895_293 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'h00AA03AB00000303 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT774  (
    .I0(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT772 ),
    .I1(\li1/_n0310_inv2_90 ),
    .I2(\li1/state [4]),
    .I3(\li1/_n0172 [1]),
    .I4(\li1/state [3]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT773_296 )
  );
  LUT6 #(
    .INIT ( 64'h8DD085505AA5855A ))
  \li1/state_FSM_FFd6-In_SW1  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd6_154 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd5_153 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(N27)
  );
  LUT6 #(
    .INIT ( 64'h91A2912266999166 ))
  \li1/state_FSM_FFd6-In_SW2  (
    .I0(\li1/state_FSM_FFd5_153 ),
    .I1(\li1/state_FSM_FFd3_151 ),
    .I2(\li1/state_FSM_FFd6_154 ),
    .I3(\li1/state_FSM_FFd4_152 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(N28)
  );
  LUT5 #(
    .INIT ( 32'h40404000 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT931  (
    .I0(\li1/_n0172 [1]),
    .I1(\li1/state_FSM_FFd3_151 ),
    .I2(\li1/state_FSM_FFd1_236 ),
    .I3(\li1/state [1]),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT93 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFCF4FCF0 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT935  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [9]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT93 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT932_302 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT933_303 ),
    .I5(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT931_301 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<9> )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT814  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/state [4]),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT813_306 )
  );
  LUT5 #(
    .INIT ( 32'hAABAAAAA ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT815  (
    .I0(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT273 ),
    .I1(\li1/_n0172 [1]),
    .I2(\li1/state [1]),
    .I3(\li1/state [3]),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT814_307 )
  );
  LUT5 #(
    .INIT ( 32'h1100BBFE ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT816  (
    .I0(\li1/state [2]),
    .I1(\li1/state [1]),
    .I2(\li1/_n0172 [1]),
    .I3(\li1/state [3]),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT815_308 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEAEAFFFFC8C0 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT817  (
    .I0(\li1/GND_6_o_GND_6_o_sub_184_OUT [6]),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT813_306 ),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT814_307 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT815_308 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT812 ),
    .I5(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT852_82 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hEC0CE000EE0EE000 ))
  \li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT11  (
    .I0(\li1/state [3]),
    .I1(\li1/state_FSM_FFd1_236 ),
    .I2(\li1/state [2]),
    .I3(\li1/DR[0] ),
    .I4(\li1/DR[4] ),
    .I5(\li1/state [4]),
    .O(\li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT1 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF2A08 ))
  \li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT12  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd4_152 ),
    .I2(\li1/state_FSM_FFd2_150 ),
    .I3(\li1/state_FSM_FFd6_154 ),
    .I4(\li1/state_FSM_FFd5_153 ),
    .O(\li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT11_310 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AAAAFF30 ))
  \li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT13  (
    .I0(\li1/DR[4] ),
    .I1(\li1/state_FSM_FFd3_151 ),
    .I2(\li1/state_state<1>1_95 ),
    .I3(\li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT11_310 ),
    .I4(\li1/state [4]),
    .I5(\li1/state [3]),
    .O(\li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT12_311 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF55554000 ))
  \li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT14  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/state [4]),
    .I2(\li1/DR[0] ),
    .I3(\li1/state [3]),
    .I4(\li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT12_311 ),
    .I5(\li1/Mmux_state[5]_dataout[3]_wide_mux_190_OUT1 ),
    .O(\li1/state[5]_dataout[3]_wide_mux_190_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00044444 ))
  \li1/state_FSM_FFd5-In1  (
    .I0(\li1/state_FSM_FFd2_150 ),
    .I1(\li1/state_FSM_FFd4_152 ),
    .I2(\li1/sel [1]),
    .I3(\li1/sel [0]),
    .I4(\li1/sel [2]),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(\li1/state_FSM_FFd5-In1_312 )
  );
  LUT6 #(
    .INIT ( 64'hDD005500FF007F00 ))
  \li1/state_FSM_FFd5-In2  (
    .I0(\li1/state_FSM_FFd6_154 ),
    .I1(\li1/state_FSM_FFd3_151 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd5_153 ),
    .I4(\li1/state_FSM_FFd5-In1_312 ),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/state_FSM_FFd5-In2_313 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF8080AA80 ))
  \li1/state_FSM_FFd5-In5  (
    .I0(\li1/state_FSM_FFd6_154 ),
    .I1(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .I2(\li1/state_FSM_FFd5-In4_314 ),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/state_FSM_FFd4_152 ),
    .I5(\li1/state_FSM_FFd5-In2_313 ),
    .O(\li1/state_FSM_FFd5-In )
  );
  LUT5 #(
    .INIT ( 32'h11110048 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT652  (
    .I0(\li1/state [4]),
    .I1(\li1/state [3]),
    .I2(\li1/state [2]),
    .I3(\li1/state [1]),
    .I4(\li1/_n0172 [1]),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT652_315 )
  );
  LUT6 #(
    .INIT ( 64'h0100000001000050 ))
  \li1/Mmux_state[5]_DR[7]_wide_mux_191_OUT2  (
    .I0(\li1/sel [2]),
    .I1(\li1/state [4]),
    .I2(\li1/state_FSM_FFd1_236 ),
    .I3(\li1/sel [0]),
    .I4(\li1/sel [1]),
    .I5(N30),
    .O(\li1/state[5]_DR[7]_wide_mux_191_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \li1/Mmux_state[5]_DR[7]_wide_mux_191_OUT1_SW0  (
    .I0(\add1/ti/start_16 ),
    .I1(\add1/ti/operand1 [0]),
    .I2(\add1/ti/operand2 [0]),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'hFDFCF5F4FDF8F5F0 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT224  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [14]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT142 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT22 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT131 ),
    .I5(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT222 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT39_SW0  (
    .I0(\li1/_n0310_inv2_90 ),
    .I1(\li1/state [4]),
    .I2(\li1/state [3]),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'hCDCDCD458D8D8D05 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT39  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [19]),
    .I2(N36),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT6411 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1711 ),
    .I5(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT222 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<19> )
  );
  LUT5 #(
    .INIT ( 32'h2AAB2AAA ))
  \li1/state_FSM_FFd1-In_SW0  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/state_FSM_FFd3_151 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd5_153 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .O(N40)
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  \li1/state_FSM_FFd1-In  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .I2(\li1/state_FSM_FFd6_154 ),
    .I3(N40),
    .O(\li1/state_FSM_FFd1-In_155 )
  );
  LUT3 #(
    .INIT ( 8'h79 ))
  \li1/state_FSM_FFd2-In_SW0  (
    .I0(\li1/state_FSM_FFd4_152 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd2_150 ),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFBAAA8AAA ))
  \li1/state_FSM_FFd2-In  (
    .I0(\li1/state_FSM_FFd2_150 ),
    .I1(\li1/state_FSM_FFd6_154 ),
    .I2(\li1/state_FSM_FFd3_151 ),
    .I3(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .I4(N42),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(\li1/state_FSM_FFd2-In_156 )
  );
  LUT5 #(
    .INIT ( 32'h57FFFFFF ))
  \li1/state_FSM_FFd3-In1  (
    .I0(\li1/state_FSM_FFd6_154 ),
    .I1(\li1/sel [1]),
    .I2(\li1/sel [0]),
    .I3(\li1/state_FSM_FFd5_153 ),
    .I4(\li1/sel [2]),
    .O(\li1/state_FSM_FFd3-In1_325 )
  );
  LUT6 #(
    .INIT ( 64'hDDFDFFFF88A8FFFF ))
  \li1/state_FSM_FFd3-In2  (
    .I0(\li1/state_FSM_FFd2_150 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd6_154 ),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/state_FSM_FFd4_152 ),
    .I5(\li1/state_FSM_FFd3-In1_325 ),
    .O(\li1/state_FSM_FFd3-In2_326 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \li1/state_FSM_FFd3-In3  (
    .I0(\li1/sel [1]),
    .I1(\li1/sel [2]),
    .I2(\li1/sel [0]),
    .I3(\li1/state_FSM_FFd5_153 ),
    .O(\li1/state_FSM_FFd3-In3_327 )
  );
  LUT5 #(
    .INIT ( 32'h10100010 ))
  \li1/state_FSM_FFd3-In4  (
    .I0(\li1/state_FSM_FFd6_154 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd2_150 ),
    .I4(\li1/state_FSM_FFd1_236 ),
    .O(\li1/state_FSM_FFd3-In4_328 )
  );
  LUT6 #(
    .INIT ( 64'hFFAAFF88AAAA8088 ))
  \li1/state_FSM_FFd3-In5  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd1_236 ),
    .I2(\li1/state_FSM_FFd3-In3_327 ),
    .I3(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .I4(\li1/state_FSM_FFd3-In2_326 ),
    .I5(\li1/state_FSM_FFd3-In4_328 ),
    .O(\li1/state_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT853  (
    .I0(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT85 ),
    .I1(\li1/_n0172 [1]),
    .I2(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT851_330 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFAFFFFFFFE ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT14_SW0  (
    .I0(\li1/state [4]),
    .I1(\li1/state [2]),
    .I2(\li1/state [3]),
    .I3(\li1/_n0172 [1]),
    .I4(\li1/state [1]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'hFCFDF4F5F8FDF0F5 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT14  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [12]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT142 ),
    .I3(N44),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT131 ),
    .I5(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT222 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<12> )
  );
  LUT5 #(
    .INIT ( 32'hBB99B99B ))
  \li1/_n0817_inv_SW0  (
    .I0(\li1/state_FSM_FFd5_153 ),
    .I1(\li1/state_FSM_FFd2_150 ),
    .I2(\li1/sel [1]),
    .I3(\li1/sel [2]),
    .I4(\li1/sel [0]),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'h0000008001000180 ))
  \li1/_n0817_inv  (
    .I0(\li1/state_FSM_FFd6_154 ),
    .I1(\li1/state_FSM_FFd3_151 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(N46),
    .I5(\li1/state_FSM_FFd5_153 ),
    .O(\li1/_n0817_inv_163 )
  );
  LUT6 #(
    .INIT ( 64'hFFAAFFAAA2AAAAAA ))
  \li1/state_FSM_FFd4-In_SW0  (
    .I0(\li1/state_FSM_FFd4_152 ),
    .I1(\li1/state_FSM_FFd6_154 ),
    .I2(\li1/state_FSM_FFd2_150 ),
    .I3(\li1/state_FSM_FFd3_151 ),
    .I4(\li1/state_FSM_FFd5_153 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(N48)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \li1/state_FSM_FFd4-In_SW1  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd1_236 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .O(N49)
  );
  LUT6 #(
    .INIT ( 64'hCAE2AAAAFEFAE2EE ))
  \li1/state_FSM_FFd4-In_SW2  (
    .I0(\li1/state_FSM_FFd4_152 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd1_236 ),
    .I3(\li1/state_FSM_FFd2_150 ),
    .I4(\li1/state_FSM_FFd3_151 ),
    .I5(\li1/state_FSM_FFd6_154 ),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFBFFF4F44004 ))
  \li1/state_FSM_FFd4-In_SW3  (
    .I0(\li1/state_FSM_FFd6_154 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd3_151 ),
    .I3(\li1/state_FSM_FFd2_150 ),
    .I4(\li1/state_FSM_FFd1_236 ),
    .I5(\li1/state_FSM_FFd4_152 ),
    .O(N51)
  );
  LUT6 #(
    .INIT ( 64'hF5F5A0A0DD88DD88 ))
  \li1/state_FSM_FFd4-In  (
    .I0(\li1/Mmux_state[5]_DR[7]_wide_mux_191_OUT21 ),
    .I1(N49),
    .I2(N51),
    .I3(N48),
    .I4(N50),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/state_FSM_FFd4-In_158 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFD5D5FFAAD580 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT76  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [10]),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT610 ),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT76_339 ),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT721 ),
    .I5(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT7 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<10> )
  );
  LUT6 #(
    .INIT ( 64'h000C0A0E0A0E0A0E ))
  \li1/_n0310_inv2  (
    .I0(\li1/_n0310_inv1_340 ),
    .I1(\li1/_n0310_inv2_90 ),
    .I2(\li1/state [4]),
    .I3(\li1/state [3]),
    .I4(\li1/_n0172 [1]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o<25>5_413 ),
    .O(\li1/_n0310_inv3_341 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \li1/GND_6_o_GND_6_o_equal_153_o<25>1  (
    .I0(\li1/delay [1]),
    .I1(\li1/delay [0]),
    .I2(\li1/delay [2]),
    .I3(\li1/delay [3]),
    .I4(\li1/delay [4]),
    .I5(\li1/delay [5]),
    .O(\li1/GND_6_o_GND_6_o_equal_153_o_0 [25])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \li1/GND_6_o_GND_6_o_equal_153_o<25>2  (
    .I0(\li1/delay [7]),
    .I1(\li1/delay [6]),
    .I2(\li1/delay [8]),
    .I3(\li1/delay [9]),
    .I4(\li1/delay [10]),
    .I5(\li1/delay [11]),
    .O(\li1/GND_6_o_GND_6_o_equal_153_o<25>1_345 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \li1/GND_6_o_GND_6_o_equal_153_o<25>3  (
    .I0(\li1/delay [13]),
    .I1(\li1/delay [12]),
    .I2(\li1/delay [14]),
    .I3(\li1/delay [15]),
    .I4(\li1/delay [16]),
    .I5(\li1/delay [17]),
    .O(\li1/GND_6_o_GND_6_o_equal_153_o<25>2_346 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \li1/GND_6_o_GND_6_o_equal_153_o<25>4  (
    .I0(\li1/delay [19]),
    .I1(\li1/delay [18]),
    .I2(\li1/delay [20]),
    .I3(\li1/delay [21]),
    .I4(\li1/delay [22]),
    .I5(\li1/delay [23]),
    .O(\li1/GND_6_o_GND_6_o_equal_153_o<25>3_347 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \li1/GND_6_o_GND_6_o_equal_153_o<25>5  (
    .I0(\li1/delay [24]),
    .I1(\li1/delay [25]),
    .I2(\li1/GND_6_o_GND_6_o_equal_153_o<25>2_346 ),
    .I3(\li1/GND_6_o_GND_6_o_equal_153_o<25>1_345 ),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o<25>3_347 ),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o_0 [25]),
    .O(\li1/GND_6_o_GND_6_o_equal_153_o )
  );
  IBUF   SW_3_IBUF (
    .I(SW[3]),
    .O(SW_3_IBUF_0)
  );
  IBUF   SW_2_IBUF (
    .I(SW[2]),
    .O(SW_2_IBUF_1)
  );
  IBUF   SW_1_IBUF (
    .I(SW[1]),
    .O(SW_1_IBUF_2)
  );
  IBUF   SW_0_IBUF (
    .I(SW[0]),
    .O(SW_0_IBUF_3)
  );
  IBUF   Reset_IBUF (
    .I(Reset),
    .O(Reset_IBUF_5)
  );
  IBUF   BTN_IBUF (
    .I(BTN),
    .O(BTN_IBUF_6)
  );
  OBUF   LCD_Control_2_OBUF (
    .I(\li1/control [2]),
    .O(LCD_Control[2])
  );
  OBUF   LCD_Control_1_OBUF (
    .I(\li1/control [1]),
    .O(LCD_Control[1])
  );
  OBUF   LCD_Control_0_OBUF (
    .I(LCD_Control_0_OBUF_14),
    .O(LCD_Control[0])
  );
  OBUF   Data_Out_3_OBUF (
    .I(\li1/dataout [3]),
    .O(Data_Out[3])
  );
  OBUF   Data_Out_2_OBUF (
    .I(\li1/dataout [2]),
    .O(Data_Out[2])
  );
  OBUF   Data_Out_1_OBUF (
    .I(\li1/dataout [1]),
    .O(Data_Out[1])
  );
  OBUF   Data_Out_0_OBUF (
    .I(\li1/dataout [0]),
    .O(Data_Out[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \bc1/Mcount_counter_cy<8>_rt  (
    .I0(\bc1/counter [8]),
    .O(\bc1/Mcount_counter_cy<8>_rt_362 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \bc1/Mcount_counter_cy<7>_rt  (
    .I0(\bc1/counter [7]),
    .O(\bc1/Mcount_counter_cy<7>_rt_363 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \bc1/Mcount_counter_cy<6>_rt  (
    .I0(\bc1/counter [6]),
    .O(\bc1/Mcount_counter_cy<6>_rt_364 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \bc1/Mcount_counter_cy<5>_rt  (
    .I0(\bc1/counter [5]),
    .O(\bc1/Mcount_counter_cy<5>_rt_365 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \bc1/Mcount_counter_cy<4>_rt  (
    .I0(\bc1/counter [4]),
    .O(\bc1/Mcount_counter_cy<4>_rt_366 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \bc1/Mcount_counter_cy<3>_rt  (
    .I0(\bc1/counter [3]),
    .O(\bc1/Mcount_counter_cy<3>_rt_367 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \bc1/Mcount_counter_cy<2>_rt  (
    .I0(\bc1/counter [2]),
    .O(\bc1/Mcount_counter_cy<2>_rt_368 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \bc1/Mcount_counter_cy<1>_rt  (
    .I0(\bc1/counter [1]),
    .O(\bc1/Mcount_counter_cy<1>_rt_369 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<0>_rt  (
    .I0(\li1/delay [0]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_cy<0>_rt_370 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \bc1/Mcount_counter_xor<9>_rt  (
    .I0(\bc1/counter [9]),
    .O(\bc1/Mcount_counter_xor<9>_rt_371 )
  );
  LUT6 #(
    .INIT ( 64'h6F966696D9692696 ))
  \li1/_n0172<1>2  (
    .I0(\li1/state_FSM_FFd6_154 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd3_151 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(\li1/_n0172 [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFFAEFF55550455 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT738  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT651 ),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1311 ),
    .I3(N57),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT732 ),
    .I5(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT73 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h0C000C000E0A0000 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT751  (
    .I0(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT75 ),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT661 ),
    .I2(\li1/state [4]),
    .I3(\li1/state [1]),
    .I4(\li1/GND_6_o_GND_6_o_sub_184_OUT [10]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT76_339 )
  );
  LUT6 #(
    .INIT ( 64'h40EA00AA406A002A ))
  \bc1/Maccum_sum2_xor<6>11  (
    .I0(\bc1/sum2 [6]),
    .I1(\bc1/sum2 [5]),
    .I2(\bc1/sum2 [4]),
    .I3(\bc1/GND_2_o_GND_2_o_equal_3_o ),
    .I4(\bc1/Maccum_sum2_xor<9>12 ),
    .I5(\bc1/Maccum_sum2_xor<4>11_23 ),
    .O(\bc1/Result<6>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF7FFFFFFF ))
  \bc1/Maccum_sum2_xor<4>111  (
    .I0(BTN_IBUF_6),
    .I1(\bc1/sum2 [3]),
    .I2(\bc1/sum2 [2]),
    .I3(\bc1/sum2 [1]),
    .I4(\bc1/sum2 [0]),
    .I5(\bc1/GND_2_o_GND_2_o_equal_3_o ),
    .O(\bc1/Maccum_sum2_xor<4>11_23 )
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \bc1/Maccum_sum2_xor<9>121  (
    .I0(BTN_IBUF_6),
    .I1(\bc1/sum2 [3]),
    .I2(\bc1/sum2 [2]),
    .I3(\bc1/sum2 [1]),
    .I4(\bc1/sum2 [0]),
    .I5(\bc1/GND_2_o_GND_2_o_equal_3_o ),
    .O(\bc1/Maccum_sum2_xor<9>12 )
  );
  LUT6 #(
    .INIT ( 64'h0001000100000001 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT2721  (
    .I0(\li1/state [3]),
    .I1(\li1/state [4]),
    .I2(\li1/state [2]),
    .I3(\li1/_n0172 [1]),
    .I4(\li1/state [1]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT272 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \bc1/Maccum_sum2_xor<8>11_SW0  (
    .I0(\bc1/sum2 [6]),
    .I1(\bc1/sum2 [5]),
    .I2(\bc1/sum2 [4]),
    .O(N59)
  );
  LUT6 #(
    .INIT ( 64'h40EA00AA406A002A ))
  \bc1/Maccum_sum2_xor<8>11  (
    .I0(\bc1/sum2 [8]),
    .I1(\bc1/sum2 [7]),
    .I2(N59),
    .I3(\bc1/GND_2_o_GND_2_o_equal_3_o ),
    .I4(\bc1/Maccum_sum2_xor<9>12 ),
    .I5(\bc1/Maccum_sum2_xor<4>11_23 ),
    .O(\bc1/Result<8>1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \bc1/Maccum_sum2_xor<7>11_SW0  (
    .I0(\bc1/sum2 [5]),
    .I1(\bc1/sum2 [4]),
    .O(N61)
  );
  LUT6 #(
    .INIT ( 64'h20EC00CC206C004C ))
  \bc1/Maccum_sum2_xor<7>11  (
    .I0(\bc1/sum2 [6]),
    .I1(\bc1/sum2 [7]),
    .I2(N61),
    .I3(\bc1/GND_2_o_GND_2_o_equal_3_o ),
    .I4(\bc1/Maccum_sum2_xor<9>12 ),
    .I5(\bc1/Maccum_sum2_xor<4>11_23 ),
    .O(\bc1/Result<7>1 )
  );
  LUT6 #(
    .INIT ( 64'h40EA00AA406A002A ))
  \bc1/Maccum_sum2_xor<9>1  (
    .I0(\bc1/sum2 [9]),
    .I1(N3),
    .I2(N59),
    .I3(\bc1/GND_2_o_GND_2_o_equal_3_o ),
    .I4(\bc1/Maccum_sum2_xor<9>12 ),
    .I5(\bc1/Maccum_sum2_xor<4>11_23 ),
    .O(\bc1/Result<9>1 )
  );
  LUT5 #(
    .INIT ( 32'hCC00CFFA ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT29_SW1  (
    .I0(\li1/state [2]),
    .I1(\li1/_n0172 [1]),
    .I2(\li1/state [1]),
    .I3(\li1/state [3]),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(N66)
  );
  LUT6 #(
    .INIT ( 64'hDDCD5545DD8D5505 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT29  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [16]),
    .I2(N65),
    .I3(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT272 ),
    .I4(N66),
    .I5(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT222 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<16> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFEA55555540 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT657  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT652_315 ),
    .I3(N74),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT656_316 ),
    .I5(N75),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFF626D60F6F62020 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT4311  (
    .I0(\li1/state [2]),
    .I1(\li1/state [3]),
    .I2(\li1/state [1]),
    .I3(\li1/_n0172 [1]),
    .I4(\li1/GND_6_o_GND_6_o_sub_184_OUT [1]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT4310 )
  );
  LUT6 #(
    .INIT ( 64'h80104088EEFF77FF ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT271  (
    .I0(\li1/state [2]),
    .I1(\li1/state [4]),
    .I2(\li1/_n0172 [1]),
    .I3(\li1/state [1]),
    .I4(\li1/state [3]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT222 )
  );
  LUT6 #(
    .INIT ( 64'hCC300030CFFA0000 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT657_SW1  (
    .I0(\li1/state [2]),
    .I1(\li1/_n0172 [1]),
    .I2(\li1/state [1]),
    .I3(\li1/state [3]),
    .I4(\li1/GND_6_o_GND_6_o_sub_184_OUT [2]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(N75)
  );
  LUT6 #(
    .INIT ( 64'h0008000800880000 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT657_SW0  (
    .I0(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1111_94 ),
    .I1(\li1/state [4]),
    .I2(\li1/_n0172 [1]),
    .I3(\li1/state [1]),
    .I4(\li1/GND_6_o_GND_6_o_sub_184_OUT [2]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(N74)
  );
  LUT5 #(
    .INIT ( 32'hCF00CFFA ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT6101  (
    .I0(\li1/state [2]),
    .I1(\li1/_n0172 [1]),
    .I2(\li1/state [1]),
    .I3(\li1/state [3]),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT610 )
  );
  LUT5 #(
    .INIT ( 32'hC0C0FFFA ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1312  (
    .I0(\li1/state [2]),
    .I1(\li1/_n0172 [1]),
    .I2(\li1/state [3]),
    .I3(\li1/state [1]),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT131 )
  );
  LUT6 #(
    .INIT ( 64'h0044505400000000 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT932  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT661 ),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT651 ),
    .I3(\li1/state [4]),
    .I4(\li1/_n0172 [1]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT931_301 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT812_SW0  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/state [1]),
    .O(N77)
  );
  LUT6 #(
    .INIT ( 64'h00AA00EA00000000 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT813  (
    .I0(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT81 ),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1111_94 ),
    .I2(\li1/state [4]),
    .I3(\li1/_n0172 [1]),
    .I4(N77),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT812 )
  );
  LUT6 #(
    .INIT ( 64'h2008200820080008 ))
  \li1/_n0310_inv311  (
    .I0(\li1/state_FSM_FFd2_150 ),
    .I1(\li1/state_FSM_FFd4_152 ),
    .I2(\li1/state_FSM_FFd3_151 ),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/state_FSM_FFd6_154 ),
    .I5(\li1/state_FSM_FFd5_153 ),
    .O(\li1/_n0310_inv31 )
  );
  LUT5 #(
    .INIT ( 32'hCC00FA00 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT656  (
    .I0(\li1/_n0310_inv31 ),
    .I1(N80),
    .I2(N79),
    .I3(\li1/GND_6_o_GND_6_o_sub_184_OUT [2]),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT656_316 )
  );
  LUT5 #(
    .INIT ( 32'hFAAAFEFE ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT697  (
    .I0(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT694 ),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT695_284 ),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT651 ),
    .I3(\li1/_n0172 [1]),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT696_285 )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444445 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT221  (
    .I0(\li1/state [4]),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT273 ),
    .I2(\li1/state [3]),
    .I3(\li1/state [2]),
    .I4(\li1/_n0172 [1]),
    .I5(\li1/state [1]),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT22 )
  );
  LUT6 #(
    .INIT ( 64'hACAAACAACCCCAAAA ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT738_SW0  (
    .I0(N82),
    .I1(N83),
    .I2(\li1/_n0172 [1]),
    .I3(\li1/state [1]),
    .I4(\li1/GND_6_o_GND_6_o_sub_184_OUT [4]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(N57)
  );
  LUT6 #(
    .INIT ( 64'hCF000300CFFA0000 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT896  (
    .I0(\li1/state [2]),
    .I1(\li1/_n0172 [1]),
    .I2(\li1/state [1]),
    .I3(\li1/state [3]),
    .I4(\li1/GND_6_o_GND_6_o_sub_184_OUT [8]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT895_293 )
  );
  LUT6 #(
    .INIT ( 64'h8A00800000808000 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT2735  (
    .I0(\li1/state_FSM_FFd5_153 ),
    .I1(\li1/state_FSM_FFd6_154 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd3_151 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT273 )
  );
  LUT6 #(
    .INIT ( 64'hEFFEEFFEFDEFEFFE ))
  \li1/_n0310_inv21  (
    .I0(\li1/state_FSM_FFd6_1_419 ),
    .I1(\li1/state_FSM_FFd5_1_418 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd3_151 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(\li1/_n0310_inv2_90 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \li1/GND_6_o_GND_6_o_equal_153_o<25>5_SW0  (
    .I0(\li1/delay [25]),
    .I1(\li1/delay [24]),
    .O(N85)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFBFFFFFFF ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT13111  (
    .I0(N85),
    .I1(\li1/GND_6_o_GND_6_o_equal_153_o_0 [25]),
    .I2(\li1/GND_6_o_GND_6_o_equal_153_o<25>1_345 ),
    .I3(\li1/GND_6_o_GND_6_o_equal_153_o<25>2_346 ),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o<25>3_347 ),
    .I5(\li1/_n0172 [1]),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1311 )
  );
  LUT6 #(
    .INIT ( 64'hF0F30000F3F50000 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT733  (
    .I0(N92),
    .I1(N93),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT651 ),
    .I3(\li1/state [3]),
    .I4(\li1/GND_6_o_GND_6_o_sub_184_OUT [4]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT732 )
  );
  LUT6 #(
    .INIT ( 64'hFCFC00F0FAFA0000 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT71  (
    .I0(N95),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT774_297 ),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT651 ),
    .I3(\li1/_n0172 [1]),
    .I4(\li1/GND_6_o_GND_6_o_sub_184_OUT [10]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT7 )
  );
  LUT5 #(
    .INIT ( 32'hFECCFFFE ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT857_SW0  (
    .I0(\li1/state [2]),
    .I1(\li1/_n0172 [1]),
    .I2(\li1/state [1]),
    .I3(\li1/state [3]),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(N98)
  );
  LUT5 #(
    .INIT ( 32'hEEF04400 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT857_SW1  (
    .I0(\li1/state [2]),
    .I1(\li1/state [1]),
    .I2(\li1/_n0172 [1]),
    .I3(\li1/state [3]),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(N99)
  );
  LUT6 #(
    .INIT ( 64'hFAFEFAFEF0F4F8FC ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT857  (
    .I0(\li1/GND_6_o_GND_6_o_sub_184_OUT [7]),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT813_306 ),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT851_330 ),
    .I3(N98),
    .I4(N99),
    .I5(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT852_82 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<7> )
  );
  LUT5 #(
    .INIT ( 32'hFFFDFFFF ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT779_SW0  (
    .I0(\li1/state [2]),
    .I1(\li1/state [1]),
    .I2(\li1/state [3]),
    .I3(\li1/_n0172 [1]),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(N101)
  );
  LUT5 #(
    .INIT ( 32'hFAAAFEFE ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT779_SW1  (
    .I0(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT774_297 ),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT77 ),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT651 ),
    .I3(\li1/_n0172 [1]),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(N102)
  );
  LUT6 #(
    .INIT ( 64'hF0F0000CFAFFAAAA ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT779_SW2  (
    .I0(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT77 ),
    .I1(\li1/state [2]),
    .I2(\li1/_n0172 [1]),
    .I3(\li1/state [1]),
    .I4(\li1/state [3]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(N103)
  );
  LUT6 #(
    .INIT ( 64'hDF57DF57CE468A02 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT779  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [5]),
    .I2(N101),
    .I3(N103),
    .I4(N102),
    .I5(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT773_296 ),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'h80104088EEFF77FE ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT11  (
    .I0(\li1/state [2]),
    .I1(\li1/state [4]),
    .I2(\li1/_n0172 [1]),
    .I3(\li1/state [1]),
    .I4(\li1/state [3]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT111 )
  );
  LUT6 #(
    .INIT ( 64'h8811468AEEFF77FE ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT934  (
    .I0(\li1/state [2]),
    .I1(\li1/state [4]),
    .I2(\li1/_n0172 [1]),
    .I3(\li1/state [1]),
    .I4(\li1/state [3]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT933_303 )
  );
  LUT6 #(
    .INIT ( 64'h0033533300301330 ))
  \li1/_n0310_inv7_SW0  (
    .I0(\li1/_n0310_inv5 ),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1111_94 ),
    .I2(\li1/_n0172 [1]),
    .I3(\li1/state [1]),
    .I4(\li1/_n0310_inv4_342 ),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o<25>5_413 ),
    .O(N105)
  );
  LUT6 #(
    .INIT ( 64'hAA000000BB1B0000 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT437  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(N107),
    .I2(N108),
    .I3(\li1/_n0172 [1]),
    .I4(\li1/GND_6_o_GND_6_o_sub_184_OUT [1]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT436 )
  );
  LUT6 #(
    .INIT ( 64'hAAAACCCCFF00F0F0 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT852  (
    .I0(N113),
    .I1(N112),
    .I2(N110),
    .I3(N111),
    .I4(\li1/state [4]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT852_82 )
  );
  LUT6 #(
    .INIT ( 64'h1444444444444444 ))
  \bc1/Maccum_sum2_xor<3>11  (
    .I0(\bc1/GND_2_o_GND_2_o_equal_3_o ),
    .I1(\bc1/sum2 [3]),
    .I2(\bc1/sum2 [2]),
    .I3(\bc1/sum2 [1]),
    .I4(\bc1/sum2 [0]),
    .I5(BTN_IBUF_6),
    .O(\bc1/Result<3>1 )
  );
  LUT5 #(
    .INIT ( 32'h14444444 ))
  \bc1/Maccum_sum2_xor<2>11  (
    .I0(\bc1/GND_2_o_GND_2_o_equal_3_o ),
    .I1(\bc1/sum2 [2]),
    .I2(\bc1/sum2 [1]),
    .I3(\bc1/sum2 [0]),
    .I4(BTN_IBUF_6),
    .O(\bc1/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'h1444 ))
  \bc1/Maccum_sum2_xor<1>11  (
    .I0(\bc1/GND_2_o_GND_2_o_equal_3_o ),
    .I1(\bc1/sum2 [1]),
    .I2(\bc1/sum2 [0]),
    .I3(BTN_IBUF_6),
    .O(\bc1/Result<1>1 )
  );
  LUT6 #(
    .INIT ( 64'h8880880899AA8000 ))
  \li1/_n0310_inv1  (
    .I0(\li1/state_FSM_FFd3_1_421 ),
    .I1(\li1/state_FSM_FFd1_236 ),
    .I2(\li1/state_FSM_FFd6_154 ),
    .I3(\li1/state_FSM_FFd2_150 ),
    .I4(\li1/state_FSM_FFd4_152 ),
    .I5(\li1/state_FSM_FFd5_153 ),
    .O(\li1/_n0310_inv1_340 )
  );
  LUT6 #(
    .INIT ( 64'hBB93F3F3BBFFF3F3 ))
  \li1/_n0310_inv4  (
    .I0(\li1/state_FSM_FFd4_152 ),
    .I1(\li1/state_FSM_FFd2_150 ),
    .I2(\li1/state_FSM_FFd1_236 ),
    .I3(\li1/state_FSM_FFd6_154 ),
    .I4(\li1/state_FSM_FFd3_151 ),
    .I5(\li1/state_FSM_FFd5_153 ),
    .O(\li1/_n0310_inv5 )
  );
  LUT6 #(
    .INIT ( 64'h0764555515555555 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1111  (
    .I0(\li1/state_FSM_FFd4_152 ),
    .I1(\li1/state_FSM_FFd6_154 ),
    .I2(\li1/state_FSM_FFd1_236 ),
    .I3(\li1/state_FSM_FFd2_150 ),
    .I4(\li1/state_FSM_FFd3_151 ),
    .I5(\li1/state_FSM_FFd5_153 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1111_94 )
  );
  LUT6 #(
    .INIT ( 64'h2AFE2E2E54555454 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT738_SW0_SW1  (
    .I0(\li1/state_FSM_FFd4_152 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd6_154 ),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd3_151 ),
    .O(N83)
  );
  LUT6 #(
    .INIT ( 64'h5055555090311110 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT695  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd2_150 ),
    .I2(\li1/state_FSM_FFd5_153 ),
    .I3(\li1/state_FSM_FFd6_154 ),
    .I4(\li1/state_FSM_FFd4_152 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT694 )
  );
  LUT6 #(
    .INIT ( 64'h0400004204000400 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT891  (
    .I0(\li1/state_FSM_FFd6_154 ),
    .I1(\li1/state_FSM_FFd3_151 ),
    .I2(\li1/state_FSM_FFd5_153 ),
    .I3(\li1/state_FSM_FFd4_152 ),
    .I4(\li1/state_FSM_FFd1_236 ),
    .I5(\li1/state_FSM_FFd2_150 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT89 )
  );
  LUT6 #(
    .INIT ( 64'h4F5E7FDE81B17FDE ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT656_SW0  (
    .I0(\li1/state_FSM_FFd5_153 ),
    .I1(\li1/state_FSM_FFd4_152 ),
    .I2(\li1/state_FSM_FFd3_151 ),
    .I3(\li1/state_FSM_FFd6_154 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(N79)
  );
  LUT6 #(
    .INIT ( 64'h49146914A0016914 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT656_SW1  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd6_154 ),
    .I2(\li1/state_FSM_FFd5_153 ),
    .I3(\li1/state_FSM_FFd4_152 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(N80)
  );
  LUT6 #(
    .INIT ( 64'h6666662676366626 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT696  (
    .I0(\li1/state_FSM_FFd4_152 ),
    .I1(\li1/state_FSM_FFd3_151 ),
    .I2(\li1/state_FSM_FFd5_153 ),
    .I3(\li1/state_FSM_FFd6_154 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT695_284 )
  );
  LUT6 #(
    .INIT ( 64'h4400444040004040 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT811  (
    .I0(\li1/state_FSM_FFd5_153 ),
    .I1(\li1/state_FSM_FFd3_151 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd6_154 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT81 )
  );
  LUT6 #(
    .INIT ( 64'h4041480940404000 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT851  (
    .I0(\li1/state_FSM_FFd5_153 ),
    .I1(\li1/state_FSM_FFd3_151 ),
    .I2(\li1/state_FSM_FFd1_236 ),
    .I3(\li1/state_FSM_FFd4_152 ),
    .I4(\li1/state_FSM_FFd6_154 ),
    .I5(\li1/state_FSM_FFd2_150 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT85 )
  );
  LUT6 #(
    .INIT ( 64'h5476547754565457 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT771  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd4_152 ),
    .I2(\li1/state_FSM_FFd5_153 ),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd6_154 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT77 )
  );
  LUT6 #(
    .INIT ( 64'h4440220004040404 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT773  (
    .I0(\li1/state_FSM_FFd4_152 ),
    .I1(\li1/state_FSM_FFd3_151 ),
    .I2(\li1/state_FSM_FFd6_154 ),
    .I3(\li1/state_FSM_FFd2_150 ),
    .I4(\li1/state_FSM_FFd1_236 ),
    .I5(\li1/state_FSM_FFd5_153 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT772 )
  );
  LUT6 #(
    .INIT ( 64'h55AF7D7D16271E1E ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT74  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd6_154 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd5_153 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT75 )
  );
  LUT6 #(
    .INIT ( 64'h666666A677F76626 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT692  (
    .I0(\li1/state_FSM_FFd4_152 ),
    .I1(\li1/state_FSM_FFd3_151 ),
    .I2(\li1/state_FSM_FFd5_153 ),
    .I3(\li1/state_FSM_FFd6_154 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT691_282 )
  );
  LUT6 #(
    .INIT ( 64'h7FFE7FFEFFFF7FFE ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT738_SW0_SW0  (
    .I0(\li1/state_FSM_FFd6_154 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd3_151 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(N82)
  );
  LUT6 #(
    .INIT ( 64'h08040A0AAA800808 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT711_SW0  (
    .I0(\li1/state_FSM_FFd2_150 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd1_236 ),
    .I3(\li1/state_FSM_FFd6_154 ),
    .I4(\li1/state_FSM_FFd3_151 ),
    .I5(\li1/state_FSM_FFd4_152 ),
    .O(N95)
  );
  LUT6 #(
    .INIT ( 64'h0080000000000080 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT711_SW1  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd6_154 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT774_297 )
  );
  LUT6 #(
    .INIT ( 64'h5004404040044040 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT894  (
    .I0(\li1/state_FSM_FFd5_153 ),
    .I1(\li1/state_FSM_FFd4_152 ),
    .I2(\li1/state_FSM_FFd3_151 ),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd6_154 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT893_291 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF6EF7FFFFFFFF ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT732_SW1  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd4_152 ),
    .I2(\li1/state_FSM_FFd6_154 ),
    .I3(\li1/state_FSM_FFd2_150 ),
    .I4(\li1/state_FSM_FFd1_236 ),
    .I5(\li1/state_FSM_FFd5_153 ),
    .O(N93)
  );
  LUT3 #(
    .INIT ( 8'h45 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT691  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd1_236 ),
    .I2(\li1/state_FSM_FFd2_150 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT69 )
  );
  LUT6 #(
    .INIT ( 64'hA2A282AA2222022A ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT431  (
    .I0(\li1/state_FSM_FFd3_1_421 ),
    .I1(\li1/state_FSM_FFd2_150 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd5_153 ),
    .I4(\li1/state_FSM_FFd6_154 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT43 )
  );
  LUT6 #(
    .INIT ( 64'h44D4501411444114 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT432  (
    .I0(\li1/state_FSM_FFd6_1_419 ),
    .I1(\li1/state_FSM_FFd5_1_418 ),
    .I2(\li1/state_FSM_FFd2_150 ),
    .I3(\li1/state_FSM_FFd4_152 ),
    .I4(\li1/state_FSM_FFd1_236 ),
    .I5(\li1/state_FSM_FFd3_151 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT431_276 )
  );
  LUT6 #(
    .INIT ( 64'h0280200262A02002 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT732_SW0  (
    .I0(\li1/state_FSM_FFd2_150 ),
    .I1(\li1/state_FSM_FFd1_236 ),
    .I2(\li1/state_FSM_FFd5_153 ),
    .I3(\li1/state_FSM_FFd4_152 ),
    .I4(\li1/state_FSM_FFd3_151 ),
    .I5(\li1/state_FSM_FFd6_154 ),
    .O(N92)
  );
  LUT6 #(
    .INIT ( 64'h33A233F7FFFFFFFF ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT698_SW0  (
    .I0(\li1/state [1]),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT69 ),
    .I2(\li1/state [2]),
    .I3(\li1/_n0172 [1]),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT691_282 ),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(N115)
  );
  LUT4 #(
    .INIT ( 16'hEFFF ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT698_SW1  (
    .I0(\li1/_n0172 [1]),
    .I1(\li1/state [3]),
    .I2(\li1/state [1]),
    .I3(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(N116)
  );
  LUT5 #(
    .INIT ( 32'hCC30CFFA ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT698_SW2  (
    .I0(\li1/state [2]),
    .I1(\li1/_n0172 [1]),
    .I2(\li1/state [1]),
    .I3(\li1/state [3]),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(N117)
  );
  LUT6 #(
    .INIT ( 64'hCDEF8DAF45670527 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT698  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/GND_6_o_GND_6_o_sub_184_OUT [3]),
    .I2(N115),
    .I3(N116),
    .I4(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT696_285 ),
    .I5(N117),
    .O(\li1/state[5]_delay[25]_wide_mux_187_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \li1/_n0310_inv3  (
    .I0(\li1/sel [2]),
    .I1(\li1/sel [1]),
    .I2(\li1/sel [0]),
    .I3(\li1/state_state<4>1_412 ),
    .O(\li1/_n0310_inv4_342 )
  );
  LUT6 #(
    .INIT ( 64'hAEAEAEAEA2AAA6FF ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT437_SW0  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd2_150 ),
    .I2(\li1/state_FSM_FFd1_236 ),
    .I3(\li1/state_FSM_FFd6_154 ),
    .I4(\li1/state_FSM_FFd5_153 ),
    .I5(\li1/state_FSM_FFd4_152 ),
    .O(N107)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAA882AAA2888 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT852_SW0  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd6_154 ),
    .I3(\li1/state_FSM_FFd3_151 ),
    .I4(\li1/state_FSM_FFd4_152 ),
    .I5(\li1/state_FSM_FFd2_150 ),
    .O(N110)
  );
  LUT6 #(
    .INIT ( 64'h6F7EFD7DEFFEFDDD ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT852_SW5  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd3_151 ),
    .I3(\li1/state_FSM_FFd2_150 ),
    .I4(\li1/state_FSM_FFd4_152 ),
    .I5(\li1/state_FSM_FFd6_154 ),
    .O(N111)
  );
  LUT6 #(
    .INIT ( 64'h2889A8AB1818B892 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT852_SW7  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd1_236 ),
    .I2(\li1/state_FSM_FFd5_153 ),
    .I3(\li1/state_FSM_FFd4_152 ),
    .I4(\li1/state_FSM_FFd6_154 ),
    .I5(\li1/state_FSM_FFd2_150 ),
    .O(N113)
  );
  LUT6 #(
    .INIT ( 64'h0801080808A18808 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT6511  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd4_152 ),
    .I2(\li1/state_FSM_FFd5_153 ),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/state_FSM_FFd2_150 ),
    .I5(\li1/state_FSM_FFd6_154 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT651 )
  );
  LUT6 #(
    .INIT ( 64'h0888888808088880 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT852_SW6  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd1_236 ),
    .I2(\li1/state_FSM_FFd6_154 ),
    .I3(\li1/state_FSM_FFd4_152 ),
    .I4(\li1/state_FSM_FFd5_153 ),
    .I5(\li1/state_FSM_FFd2_150 ),
    .O(N112)
  );
  LUT6 #(
    .INIT ( 64'h0028080000282028 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT6611  (
    .I0(\li1/state_FSM_FFd4_152 ),
    .I1(\li1/state_FSM_FFd6_154 ),
    .I2(\li1/state_FSM_FFd5_153 ),
    .I3(\li1/state_FSM_FFd3_151 ),
    .I4(\li1/state_FSM_FFd1_236 ),
    .I5(\li1/state_FSM_FFd2_150 ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT661 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA020250820702 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT437_SW1  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd6_154 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd2_150 ),
    .I4(\li1/state_FSM_FFd5_153 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(N108)
  );
  LUT4 #(
    .INIT ( 16'hC808 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT435_SW0  (
    .I0(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT431_276 ),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT43 ),
    .I2(\li1/state [2]),
    .I3(\li1/GND_6_o_GND_6_o_sub_184_OUT [1]),
    .O(N119)
  );
  LUT5 #(
    .INIT ( 32'hC8CC0808 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT435_SW1  (
    .I0(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT431_276 ),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT43 ),
    .I2(\li1/state [2]),
    .I3(\li1/state [1]),
    .I4(\li1/GND_6_o_GND_6_o_sub_184_OUT [1]),
    .O(N120)
  );
  LUT6 #(
    .INIT ( 64'hC8CCC80CC8C8C808 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT435_SW3  (
    .I0(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT431_276 ),
    .I1(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT43 ),
    .I2(\li1/state [2]),
    .I3(\li1/state [1]),
    .I4(\li1/_n0172 [1]),
    .I5(\li1/GND_6_o_GND_6_o_sub_184_OUT [1]),
    .O(N122)
  );
  LUT6 #(
    .INIT ( 64'hFAFCFA0C0AFC0A0C ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT435  (
    .I0(N121),
    .I1(N119),
    .I2(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT1311 ),
    .I3(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .I4(N120),
    .I5(N122),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT434 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF0020FFFF00FF ))
  \li1/_n0310_inv7  (
    .I0(\li1/state_FSM_FFd2_150 ),
    .I1(\li1/state_FSM_FFd3_151 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/_n0310_inv3_341 ),
    .I5(N105),
    .O(\li1/_n0310_inv )
  );
  LUT5 #(
    .INIT ( 32'hAA00FE00 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT933  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT932_302 )
  );
  LUT6 #(
    .INIT ( 64'h0282000202220222 ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT435_SW2  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd4_152 ),
    .I2(\li1/state_FSM_FFd2_150 ),
    .I3(\li1/state_FSM_FFd6_154 ),
    .I4(\li1/state_FSM_FFd1_236 ),
    .I5(\li1/state_FSM_FFd5_153 ),
    .O(N121)
  );
  MUXF7   \li1/_n0741_inv2  (
    .I0(N124),
    .I1(N125),
    .S(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/_n0741_inv )
  );
  LUT6 #(
    .INIT ( 64'h0140000200000000 ))
  \li1/_n0741_inv2_F  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/state [4]),
    .I2(\li1/state [2]),
    .I3(\li1/state [3]),
    .I4(\li1/state [1]),
    .I5(\li1/_n0172 [1]),
    .O(N124)
  );
  LUT6 #(
    .INIT ( 64'h1551003300000000 ))
  \li1/_n0741_inv2_G  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/state [4]),
    .I2(\li1/state [2]),
    .I3(\li1/state [3]),
    .I4(\li1/state [1]),
    .I5(\li1/_n0172 [1]),
    .O(N125)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT29_SW0_SW0  (
    .I0(\li1/state_FSM_FFd5_153 ),
    .I1(\li1/state [4]),
    .O(N126)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF53FFDF7F ))
  \li1/Mmux_state[5]_delay[25]_wide_mux_187_OUT29_SW0  (
    .I0(\li1/state_FSM_FFd6_154 ),
    .I1(\li1/state_FSM_FFd2_150 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd3_151 ),
    .I4(\li1/state_FSM_FFd1_236 ),
    .I5(N126),
    .O(N65)
  );
  LUT6 #(
    .INIT ( 64'hABAB496909294969 ))
  \li1/state_FSM_FFd5-In4  (
    .I0(\li1/state_FSM_FFd3_151 ),
    .I1(\li1/state_FSM_FFd2_150 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd5_153 ),
    .I4(\li1/state_FSM_FFd1_236 ),
    .I5(\li1/Mmux_state[5]_DR[7]_wide_mux_191_OUT21 ),
    .O(\li1/state_FSM_FFd5-In4_314 )
  );
  LUT5 #(
    .INIT ( 32'hA8888000 ))
  \li1/Mmux_state[5]_DR[7]_wide_mux_191_OUT3_SW0  (
    .I0(\add1/ti/start_16 ),
    .I1(\add1/ti/operand1 [1]),
    .I2(\add1/ti/operand1 [0]),
    .I3(\add1/ti/operand2 [0]),
    .I4(\add1/ti/operand2 [1]),
    .O(N34)
  );
  LUT5 #(
    .INIT ( 32'h6999FFFF ))
  \li1/Mmux_state[5]_DR[7]_wide_mux_191_OUT2_SW0  (
    .I0(\add1/ti/operand2 [1]),
    .I1(\add1/ti/operand1 [1]),
    .I2(\add1/ti/operand2 [0]),
    .I3(\add1/ti/operand1 [0]),
    .I4(\add1/ti/start_16 ),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'h0000040010101410 ))
  \li1/Mmux_state[5]_DR[7]_wide_mux_191_OUT3  (
    .I0(\li1/sel [2]),
    .I1(\li1/state_FSM_FFd1_236 ),
    .I2(\li1/sel [1]),
    .I3(N34),
    .I4(\li1/sel [0]),
    .I5(\li1/state [4]),
    .O(\li1/state[5]_DR[7]_wide_mux_191_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0001000100011011 ))
  \li1/Mmux_state[5]_DR[7]_wide_mux_191_OUT1  (
    .I0(\li1/sel [1]),
    .I1(\li1/sel [2]),
    .I2(\li1/state_FSM_FFd1_236 ),
    .I3(\li1/state [4]),
    .I4(N32),
    .I5(\li1/sel [0]),
    .O(\li1/state[5]_DR[7]_wide_mux_191_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hAAAA0002AAAAFFFF ))
  \li1/_n0381_inv_SW3  (
    .I0(\li1/state_FSM_FFd1_236 ),
    .I1(\li1/sel [0]),
    .I2(\li1/sel [1]),
    .I3(\li1/sel [2]),
    .I4(\li1/state [1]),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o<25>51 ),
    .O(N128)
  );
  FD #(
    .INIT ( 1'b0 ))
  \li1/state_FSM_FFd2_1  (
    .C(Clock_BUFGP_4),
    .D(\li1/state_FSM_FFd2-In_156 ),
    .Q(\li1/state_FSM_FFd2_1_411 )
  );
  LUT6 #(
    .INIT ( 64'h08084800AAAAEAA2 ))
  \li1/state_state<4>1_1  (
    .I0(\li1/state_FSM_FFd2_1_411 ),
    .I1(\li1/state_FSM_FFd3_1_421 ),
    .I2(\li1/state_FSM_FFd4_152 ),
    .I3(\li1/state_FSM_FFd5_153 ),
    .I4(\li1/state_FSM_FFd6_154 ),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(\li1/state_state<4>1_412 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \li1/GND_6_o_GND_6_o_equal_153_o<25>5_1  (
    .I0(\li1/delay [24]),
    .I1(\li1/delay [25]),
    .I2(\li1/GND_6_o_GND_6_o_equal_153_o<25>2_346 ),
    .I3(\li1/GND_6_o_GND_6_o_equal_153_o<25>1_345 ),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o<25>3_347 ),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o_0 [25]),
    .O(\li1/GND_6_o_GND_6_o_equal_153_o<25>5_413 )
  );
  LUT5 #(
    .INIT ( 32'h00400242 ))
  \li1/_n0381_inv_rstpot  (
    .I0(\li1/state [3]),
    .I1(\li1/state [4]),
    .I2(\li1/state [2]),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(N128),
    .O(\li1/_n0381_inv_rstpot_414 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \li1/sel_2_dpot  (
    .I0(\li1/sel [2]),
    .I1(\li1/state[5]_sel[2]_wide_mux_188_OUT<2> ),
    .I2(\li1/_n0381_inv_rstpot_414 ),
    .O(\li1/sel_2_dpot_417 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \li1/state_FSM_FFd5_1  (
    .C(Clock_BUFGP_4),
    .D(\li1/state_FSM_FFd5-In ),
    .Q(\li1/state_FSM_FFd5_1_418 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \li1/state_FSM_FFd6_1  (
    .C(Clock_BUFGP_4),
    .D(\li1/state_FSM_FFd6-In_160 ),
    .Q(\li1/state_FSM_FFd6_1_419 )
  );
  LUT4 #(
    .INIT ( 16'h54AA ))
  \li1/sel_0_dpot  (
    .I0(\li1/sel [0]),
    .I1(\li1/state_FSM_FFd1_236 ),
    .I2(\li1/state [1]),
    .I3(\li1/_n0381_inv_rstpot_414 ),
    .O(\li1/sel_0_dpot_415 )
  );
  LUT5 #(
    .INIT ( 32'h9990AAAA ))
  \li1/sel_1_dpot  (
    .I0(\li1/sel [1]),
    .I1(\li1/sel [0]),
    .I2(\li1/state_FSM_FFd1_236 ),
    .I3(\li1/state [1]),
    .I4(\li1/_n0381_inv_rstpot_414 ),
    .O(\li1/sel_1_dpot_416 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \li1/GND_6_o_GND_6_o_equal_153_o<25>5_2  (
    .I0(\li1/delay [24]),
    .I1(\li1/delay [25]),
    .I2(\li1/GND_6_o_GND_6_o_equal_153_o<25>2_346 ),
    .I3(\li1/GND_6_o_GND_6_o_equal_153_o<25>1_345 ),
    .I4(\li1/GND_6_o_GND_6_o_equal_153_o<25>3_347 ),
    .I5(\li1/GND_6_o_GND_6_o_equal_153_o_0 [25]),
    .O(\li1/GND_6_o_GND_6_o_equal_153_o<25>51 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \li1/state_FSM_FFd3_1  (
    .C(Clock_BUFGP_4),
    .D(\li1/state_FSM_FFd3-In ),
    .Q(\li1/state_FSM_FFd3_1_421 )
  );
  MUXF7   \li1/state_FSM_FFd6-In  (
    .I0(N132),
    .I1(N133),
    .S(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/state_FSM_FFd6-In_160 )
  );
  LUT6 #(
    .INIT ( 64'h2282BFAEAAAABBAB ))
  \li1/state_FSM_FFd6-In_F  (
    .I0(\li1/state_FSM_FFd6_154 ),
    .I1(\li1/state_FSM_FFd5_153 ),
    .I2(\li1/state_FSM_FFd2_150 ),
    .I3(\li1/state_FSM_FFd1_236 ),
    .I4(\li1/state_FSM_FFd4_152 ),
    .I5(\li1/state_FSM_FFd3_151 ),
    .O(N132)
  );
  LUT5 #(
    .INIT ( 32'h55545557 ))
  \li1/state_FSM_FFd6-In_G  (
    .I0(N27),
    .I1(\li1/sel [2]),
    .I2(\li1/sel [0]),
    .I3(\li1/sel [1]),
    .I4(N28),
    .O(N133)
  );
  MUXF7   \li1/_n0611_inv  (
    .I0(N134),
    .I1(N135),
    .S(\li1/GND_6_o_GND_6_o_equal_153_o ),
    .O(\li1/_n0611_inv_164 )
  );
  LUT6 #(
    .INIT ( 64'h0000000202800001 ))
  \li1/_n0611_inv_F  (
    .I0(\li1/_n0172 [1]),
    .I1(\li1/state [2]),
    .I2(\li1/state [4]),
    .I3(\li1/state [3]),
    .I4(\li1/state [1]),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(N134)
  );
  LUT6 #(
    .INIT ( 64'h1111111471D1DDBF ))
  \li1/_n0611_inv_G  (
    .I0(\li1/state [4]),
    .I1(\li1/state [3]),
    .I2(\li1/_n0172 [1]),
    .I3(\li1/state [2]),
    .I4(\li1/state [1]),
    .I5(\li1/state_FSM_FFd1_236 ),
    .O(N135)
  );
  BUFGP   Clock_BUFGP (
    .I(Clock),
    .O(Clock_BUFGP_4)
  );
  INV   \bc1/Mcount_counter_lut<0>_INV_0  (
    .I(\bc1/counter [0]),
    .O(\bc1/Mcount_counter_lut [0])
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<25>_INV_0  (
    .I(\li1/delay [25]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<25> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<24>_INV_0  (
    .I(\li1/delay [24]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<24> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<23>_INV_0  (
    .I(\li1/delay [23]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<23> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<22>_INV_0  (
    .I(\li1/delay [22]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<22> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<21>_INV_0  (
    .I(\li1/delay [21]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<21> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<20>_INV_0  (
    .I(\li1/delay [20]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<20> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<19>_INV_0  (
    .I(\li1/delay [19]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<19> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<18>_INV_0  (
    .I(\li1/delay [18]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<18> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<17>_INV_0  (
    .I(\li1/delay [17]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<17> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<16>_INV_0  (
    .I(\li1/delay [16]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<16> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<15>_INV_0  (
    .I(\li1/delay [15]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<15> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<14>_INV_0  (
    .I(\li1/delay [14]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<14> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<13>_INV_0  (
    .I(\li1/delay [13]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<13> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<12>_INV_0  (
    .I(\li1/delay [12]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<12> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<11>_INV_0  (
    .I(\li1/delay [11]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<11> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<10>_INV_0  (
    .I(\li1/delay [10]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<10> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<9>_INV_0  (
    .I(\li1/delay [9]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<9> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<8>_INV_0  (
    .I(\li1/delay [8]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<8> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<7>_INV_0  (
    .I(\li1/delay [7]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<7> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<6>_INV_0  (
    .I(\li1/delay [6]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<6> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<5>_INV_0  (
    .I(\li1/delay [5]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<5> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<4>_INV_0  (
    .I(\li1/delay [4]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<4> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<3>_INV_0  (
    .I(\li1/delay [3]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<3> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<2>_INV_0  (
    .I(\li1/delay [2]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<2> )
  );
  INV   \li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<1>_INV_0  (
    .I(\li1/delay [1]),
    .O(\li1/Msub_GND_6_o_GND_6_o_sub_184_OUT<25:0>_lut<1> )
  );
  INV   \bc1/buttonCor_GND_2_o_MUX_5_o1_INV_0  (
    .I(\bc1/state_59 ),
    .O(\bc1/buttonCor_GND_2_o_MUX_5_o )
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

