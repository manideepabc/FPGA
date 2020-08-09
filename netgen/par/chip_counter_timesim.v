////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: chip_counter_timesim.v
// /___/   /\     Timestamp: Mon Apr 18 17:01:54 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 2 -pcf chip_counter.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim chip_counter.ncd chip_counter_timesim.v 
// Device	: 6slx45fgg484-2 (PRODUCTION 1.23 2013-10-13)
// Input file	: chip_counter.ncd
// Output file	: C:\XilinxRun\FPGA_HighDRADC_V1\netgen\par\chip_counter_timesim.v
// # of Modules	: 1
// Design Name	: chip_counter
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

module chip_counter (
  D_out_p, D_out_m, clk_rst_latch, clk_osr, reset_cnt, dir, reset_latch, cnt, cnt_diff, cap_state
);
  input D_out_p;
  input D_out_m;
  input clk_rst_latch;
  input clk_osr;
  input reset_cnt;
  output dir;
  output reset_latch;
  output [11 : 0] cnt;
  output [11 : 0] cnt_diff;
  output [2 : 0] cap_state;
  wire \clk_rst_latch_BUFGP/IBUFG_0 ;
  wire clk_rst_latch_BUFGP;
  wire \clk_osr_BUFGP/IBUFG_0 ;
  wire clk_osr_BUFGP;
  wire D_out_change;
  wire dir_OBUF_344;
  wire reset_cnt_IBUF_0;
  wire reset_latch_flag_346;
  wire reset_latch_flag_tmp_347;
  wire reset_latch_OBUF_348;
  wire cap_state_FSM_FFd3_349;
  wire cnt_0_351;
  wire cnt_1_353;
  wire cnt_2_355;
  wire cnt_3_357;
  wire cnt_4_359;
  wire cnt_5_361;
  wire cnt_6_363;
  wire cnt_7_365;
  wire cnt_8_367;
  wire cnt_9_369;
  wire cnt_10_371;
  wire cnt_11_373;
  wire cap_state_FSM_FFd1_374;
  wire cap_state_FSM_FFd2_375;
  wire D_out_change_inv;
  wire D_out_p_IBUF_0;
  wire D_out_m_IBUF_0;
  wire \Mcount_cnt_cy[3] ;
  wire \Mcount_cnt_cy[7] ;
  wire cnt_diff_0_382;
  wire cnt_diff_1_383;
  wire \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>_384 ;
  wire cnt_diff_2_385;
  wire cnt_diff_3_386;
  wire cnt_diff_4_387;
  wire cnt_diff_5_388;
  wire \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>_389 ;
  wire cnt_diff_6_390;
  wire cnt_diff_7_391;
  wire cnt_diff_8_392;
  wire cnt_diff_9_393;
  wire cnt_diff_10_394;
  wire cnt_diff_11_395;
  wire cnt_1_rt_21;
  wire cnt_2_rt_17;
  wire \ProtoComp7.CYINITGND.0 ;
  wire cnt_3_rt_6;
  wire cnt_4_rt_53;
  wire cnt_5_rt_49;
  wire cnt_6_rt_45;
  wire cnt_7_rt_34;
  wire cnt_8_rt_79;
  wire cnt_9_rt_75;
  wire cnt_10_rt_71;
  wire cnt_11_rt_62;
  wire \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<0>_110 ;
  wire \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<1>_105 ;
  wire \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<2>_100 ;
  wire \cnt[11]_cnt_tmp[11]_sub_7_OUT<0> ;
  wire \cnt[11]_cnt_tmp[11]_sub_7_OUT<1> ;
  wire \cnt[11]_cnt_tmp[11]_sub_7_OUT<2> ;
  wire \cnt[11]_cnt_tmp[11]_sub_7_OUT<3> ;
  wire \ProtoComp10.CYINITVCC.1 ;
  wire \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<3>_88 ;
  wire \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<4>_138 ;
  wire \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<5>_133 ;
  wire \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<6>_128 ;
  wire \cnt[11]_cnt_tmp[11]_sub_7_OUT<4> ;
  wire \cnt[11]_cnt_tmp[11]_sub_7_OUT<5> ;
  wire \cnt[11]_cnt_tmp[11]_sub_7_OUT<6> ;
  wire \cnt[11]_cnt_tmp[11]_sub_7_OUT<7> ;
  wire \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<7>_116 ;
  wire \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<8>_164 ;
  wire \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<9>_159 ;
  wire \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<10>_154 ;
  wire \cnt[11]_cnt_tmp[11]_sub_7_OUT<8> ;
  wire \cnt[11]_cnt_tmp[11]_sub_7_OUT<9> ;
  wire \cnt[11]_cnt_tmp[11]_sub_7_OUT<10> ;
  wire \cnt[11]_cnt_tmp[11]_sub_7_OUT<11> ;
  wire \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<11>_143 ;
  wire \clk_osr_BUFGP/IBUFG_184 ;
  wire D_out_m_IBUF_199;
  wire D_out_p_IBUF_204;
  wire \clk_rst_latch_BUFGP/IBUFG_229 ;
  wire reset_cnt_IBUF_236;
  wire \dir_OBUF/INV_dirCLK ;
  wire \dir_OBUF/INV_cap_state_FSM_FFd3CLK ;
  wire \dir_OBUF/INV_cap_state_FSM_FFd2CLK ;
  wire \dir_OBUF/INV_cap_state_FSM_FFd1CLK ;
  wire cap_state_FSM_FFd1_pack_2;
  wire \cap_state_FSM_FFd1-In ;
  wire \cap_state_FSM_FFd2-In ;
  wire \cap_state_FSM_FFd3-In ;
  wire dir_INV_4_o;
  wire D_out_change_pack_6;
  wire \reset_latch_flag/INV_reset_latch_flagCLK ;
  wire reset_latch_flag_INV_6_o;
  wire reset_latch_flag_reset_latch_flag_tmp_not_equal_4_o;
  wire \NlwBufferSignal_clk_rst_latch_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_clk_osr_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_cnt_3/CLK ;
  wire \NlwBufferSignal_cnt_2/CLK ;
  wire \NlwBufferSignal_cnt_1/CLK ;
  wire \NlwBufferSignal_cnt_0/CLK ;
  wire \NlwBufferSignal_cnt_7/CLK ;
  wire \NlwBufferSignal_cnt_6/CLK ;
  wire \NlwBufferSignal_cnt_5/CLK ;
  wire \NlwBufferSignal_cnt_4/CLK ;
  wire \NlwBufferSignal_cnt_11/CLK ;
  wire \NlwBufferSignal_cnt_10/CLK ;
  wire \NlwBufferSignal_cnt_9/CLK ;
  wire \NlwBufferSignal_cnt_8/CLK ;
  wire \NlwBufferSignal_cnt_diff_3/CLK ;
  wire \NlwBufferSignal_cnt_diff_2/CLK ;
  wire \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<0> ;
  wire \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<1> ;
  wire \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<2> ;
  wire \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<3> ;
  wire \NlwBufferSignal_cnt_diff_1/CLK ;
  wire \NlwBufferSignal_cnt_diff_0/CLK ;
  wire \NlwBufferSignal_cnt_diff_7/CLK ;
  wire \NlwBufferSignal_cnt_diff_6/CLK ;
  wire \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<0> ;
  wire \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<1> ;
  wire \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<2> ;
  wire \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<3> ;
  wire \NlwBufferSignal_cnt_diff_5/CLK ;
  wire \NlwBufferSignal_cnt_diff_4/CLK ;
  wire \NlwBufferSignal_cnt_diff_11/CLK ;
  wire \NlwBufferSignal_cnt_diff_10/CLK ;
  wire \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>/DI<0> ;
  wire \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>/DI<1> ;
  wire \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>/DI<2> ;
  wire \NlwBufferSignal_cnt_diff_9/CLK ;
  wire \NlwBufferSignal_cnt_diff_8/CLK ;
  wire \NlwBufferSignal_cnt_4_OBUF/I ;
  wire \NlwBufferSignal_cnt_5_OBUF/I ;
  wire \NlwBufferSignal_cnt_6_OBUF/I ;
  wire \NlwBufferSignal_reset_latch_OBUF/I ;
  wire \NlwBufferSignal_cnt_7_OBUF/I ;
  wire \NlwBufferSignal_cnt_8_OBUF/I ;
  wire \NlwBufferSignal_cnt_9_OBUF/I ;
  wire \NlwBufferSignal_cnt_10_OBUF/I ;
  wire \NlwBufferSignal_cnt_11_OBUF/I ;
  wire \NlwBufferSignal_dir_OBUF/I ;
  wire \NlwBufferSignal_cnt_diff_10_OBUF/I ;
  wire \NlwBufferSignal_cnt_diff_11_OBUF/I ;
  wire \NlwBufferSignal_cnt_diff_0_OBUF/I ;
  wire \NlwBufferSignal_cnt_diff_1_OBUF/I ;
  wire \NlwBufferSignal_cnt_diff_2_OBUF/I ;
  wire \NlwBufferSignal_cnt_diff_3_OBUF/I ;
  wire \NlwBufferSignal_cnt_diff_4_OBUF/I ;
  wire \NlwBufferSignal_cnt_diff_5_OBUF/I ;
  wire \NlwBufferSignal_cnt_diff_6_OBUF/I ;
  wire \NlwBufferSignal_cnt_diff_7_OBUF/I ;
  wire \NlwBufferSignal_cnt_diff_8_OBUF/I ;
  wire \NlwBufferSignal_cap_state_0_OBUF/I ;
  wire \NlwBufferSignal_cnt_diff_9_OBUF/I ;
  wire \NlwBufferSignal_cap_state_1_OBUF/I ;
  wire \NlwBufferSignal_cap_state_2_OBUF/I ;
  wire \NlwBufferSignal_cnt_0_OBUF/I ;
  wire \NlwBufferSignal_cnt_1_OBUF/I ;
  wire \NlwBufferSignal_cnt_2_OBUF/I ;
  wire \NlwBufferSignal_cnt_3_OBUF/I ;
  wire \NlwBufferSignal_cnt_tmp_7/CLK ;
  wire \NlwBufferSignal_cnt_tmp_7/IN ;
  wire \NlwBufferSignal_cnt_tmp_6/CLK ;
  wire \NlwBufferSignal_cnt_tmp_6/IN ;
  wire \NlwBufferSignal_cnt_tmp_5/CLK ;
  wire \NlwBufferSignal_cnt_tmp_5/IN ;
  wire \NlwBufferSignal_cnt_tmp_4/CLK ;
  wire \NlwBufferSignal_cnt_tmp_4/IN ;
  wire \NlwBufferSignal_cnt_tmp_3/CLK ;
  wire \NlwBufferSignal_cnt_tmp_3/IN ;
  wire \NlwBufferSignal_cnt_tmp_2/CLK ;
  wire \NlwBufferSignal_cnt_tmp_2/IN ;
  wire \NlwBufferSignal_cnt_tmp_1/CLK ;
  wire \NlwBufferSignal_cnt_tmp_1/IN ;
  wire \NlwBufferSignal_cnt_tmp_0/CLK ;
  wire \NlwBufferSignal_cnt_tmp_0/IN ;
  wire \NlwBufferSignal_cnt_tmp_11/CLK ;
  wire \NlwBufferSignal_cnt_tmp_11/IN ;
  wire \NlwBufferSignal_cnt_tmp_10/CLK ;
  wire \NlwBufferSignal_cnt_tmp_10/IN ;
  wire \NlwBufferSignal_cnt_tmp_9/CLK ;
  wire \NlwBufferSignal_cnt_tmp_9/IN ;
  wire \NlwBufferSignal_cnt_tmp_8/CLK ;
  wire \NlwBufferSignal_cnt_tmp_8/IN ;
  wire \NlwBufferSignal_dir/CLK ;
  wire \NlwBufferSignal_cap_state_FSM_FFd3/CLK ;
  wire \NlwBufferSignal_cap_state_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_cap_state_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_reset_latch_flag/CLK ;
  wire \NlwBufferSignal_reset_latch/CLK ;
  wire \NlwBufferSignal_reset_latch_flag_tmp/CLK ;
  wire \NlwBufferSignal_reset_latch_flag_tmp/IN ;
  wire VCC;
  wire GND;
  wire \NLW_N1_5.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_4.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_3.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_9.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_8.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_7.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_6.A5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_cnt_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_xor<11>_DI[3]_UNCONNECTED ;
  wire \NLW_N1_12.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_11.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_10.A5LUT_O_UNCONNECTED ;
  wire \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>_DI[3]_UNCONNECTED ;
  wire [11 : 0] cnt_tmp;
  wire [0 : 0] Mcount_cnt_lut;
  wire [11 : 0] Result;
  initial $sdf_annotate("netgen/par/chip_counter_timesim.sdf");
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y16" ))
  \clk_rst_latch_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_rst_latch_BUFGP/BUFG/IN ),
    .O(clk_rst_latch_BUFGP)
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \clk_osr_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_osr_BUFGP/BUFG/IN ),
    .O(clk_osr_BUFGP)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y2" ),
    .INIT ( 1'b0 ))
  cnt_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_3/CLK ),
    .I(Result[3]),
    .O(cnt_3_357),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y2" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  cnt_3_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(cnt_3_357),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(cnt_3_rt_6)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y2" ),
    .INIT ( 32'h00000000 ))
  \N1_5.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_5.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X18Y2" ))
  \ProtoComp7.CYINITGND  (
    .O(\ProtoComp7.CYINITGND.0 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y2" ),
    .INIT ( 1'b0 ))
  cnt_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_2/CLK ),
    .I(Result[2]),
    .O(cnt_2_355),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y2" ))
  \Mcount_cnt_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp7.CYINITGND.0 ),
    .CO({\Mcount_cnt_cy[3] , \NLW_Mcount_cnt_cy<3>_CO[2]_UNCONNECTED , \NLW_Mcount_cnt_cy<3>_CO[1]_UNCONNECTED , 
\NLW_Mcount_cnt_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({Result[3], Result[2], Result[1], Result[0]}),
    .S({cnt_3_rt_6, cnt_2_rt_17, cnt_1_rt_21, Mcount_cnt_lut[0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y2" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  cnt_2_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(cnt_2_355),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(cnt_2_rt_17)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y2" ),
    .INIT ( 32'h00000000 ))
  \N1_4.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_4.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y2" ),
    .INIT ( 1'b0 ))
  cnt_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_1/CLK ),
    .I(Result[1]),
    .O(cnt_1_353),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y2" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  cnt_1_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(cnt_1_353),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(cnt_1_rt_21)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y2" ),
    .INIT ( 32'h00000000 ))
  \N1_3.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_3.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y2" ),
    .INIT ( 1'b0 ))
  cnt_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_0/CLK ),
    .I(Result[0]),
    .O(cnt_0_351),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y2" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Mcount_cnt_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(cnt_0_351),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y2" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y3" ),
    .INIT ( 1'b0 ))
  cnt_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_7/CLK ),
    .I(Result[7]),
    .O(cnt_7_365),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y3" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  cnt_7_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(cnt_7_365),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(cnt_7_rt_34)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y3" ),
    .INIT ( 32'h00000000 ))
  \N1_9.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_9.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y3" ),
    .INIT ( 1'b0 ))
  cnt_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_6/CLK ),
    .I(Result[6]),
    .O(cnt_6_363),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y3" ))
  \Mcount_cnt_cy<7>  (
    .CI(\Mcount_cnt_cy[3] ),
    .CYINIT(1'b0),
    .CO({\Mcount_cnt_cy[7] , \NLW_Mcount_cnt_cy<7>_CO[2]_UNCONNECTED , \NLW_Mcount_cnt_cy<7>_CO[1]_UNCONNECTED , 
\NLW_Mcount_cnt_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({Result[7], Result[6], Result[5], Result[4]}),
    .S({cnt_7_rt_34, cnt_6_rt_45, cnt_5_rt_49, cnt_4_rt_53})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y3" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  cnt_6_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(cnt_6_363),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(cnt_6_rt_45)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y3" ),
    .INIT ( 32'h00000000 ))
  \N1_8.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_8.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y3" ),
    .INIT ( 1'b0 ))
  cnt_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_5/CLK ),
    .I(Result[5]),
    .O(cnt_5_361),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y3" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  cnt_5_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(cnt_5_361),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(cnt_5_rt_49)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y3" ),
    .INIT ( 32'h00000000 ))
  \N1_7.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_7.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y3" ),
    .INIT ( 1'b0 ))
  cnt_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_4/CLK ),
    .I(Result[4]),
    .O(cnt_4_359),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y3" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  cnt_4_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(cnt_4_359),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(cnt_4_rt_53)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y3" ),
    .INIT ( 32'h00000000 ))
  \N1_6.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_6.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y4" ),
    .INIT ( 1'b0 ))
  cnt_11 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_11/CLK ),
    .I(Result[11]),
    .O(cnt_11_373),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y4" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  cnt_11_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(cnt_11_373),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(cnt_11_rt_62)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y4" ),
    .INIT ( 1'b0 ))
  cnt_10 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_10/CLK ),
    .I(Result[10]),
    .O(cnt_10_371),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y4" ))
  \Mcount_cnt_xor<11>  (
    .CI(\Mcount_cnt_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_Mcount_cnt_xor<11>_CO[3]_UNCONNECTED , \NLW_Mcount_cnt_xor<11>_CO[2]_UNCONNECTED , \NLW_Mcount_cnt_xor<11>_CO[1]_UNCONNECTED , 
\NLW_Mcount_cnt_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Mcount_cnt_xor<11>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({Result[11], Result[10], Result[9], Result[8]}),
    .S({cnt_11_rt_62, cnt_10_rt_71, cnt_9_rt_75, cnt_8_rt_79})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y4" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  cnt_10_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(cnt_10_371),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(cnt_10_rt_71)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y4" ),
    .INIT ( 32'h00000000 ))
  \N1_12.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_12.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y4" ),
    .INIT ( 1'b0 ))
  cnt_9 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_9/CLK ),
    .I(Result[9]),
    .O(cnt_9_369),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y4" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  cnt_9_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(cnt_9_369),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(cnt_9_rt_75)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y4" ),
    .INIT ( 32'h00000000 ))
  \N1_11.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_11.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y4" ),
    .INIT ( 1'b0 ))
  cnt_8 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_8/CLK ),
    .I(Result[8]),
    .O(cnt_8_367),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y4" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  cnt_8_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(cnt_8_367),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(cnt_8_rt_79)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y4" ),
    .INIT ( 32'h00000000 ))
  \N1_10.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_10.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y5" ),
    .INIT ( 1'b0 ))
  cnt_diff_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_diff_3/CLK ),
    .I(\cnt[11]_cnt_tmp[11]_sub_7_OUT<3> ),
    .O(cnt_diff_3_386),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y5" ),
    .INIT ( 64'hFF00FF0000FF00FF ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<3>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR5(cnt_3_357),
    .ADR3(cnt_tmp[3]),
    .O(\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<3>_88 )
  );
  X_ONE #(
    .LOC ( "SLICE_X16Y5" ))
  \ProtoComp10.CYINITVCC  (
    .O(\ProtoComp10.CYINITVCC.1 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y5" ),
    .INIT ( 1'b0 ))
  cnt_diff_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_diff_2/CLK ),
    .I(\cnt[11]_cnt_tmp[11]_sub_7_OUT<2> ),
    .O(cnt_diff_2_385),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X16Y5" ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp10.CYINITVCC.1 ),
    .CO({\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>_384 , \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>_CO[2]_UNCONNECTED , 
\NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>_CO[1]_UNCONNECTED , \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<3> , \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<2> , 
\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<1> , \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<0> }),
    .O({\cnt[11]_cnt_tmp[11]_sub_7_OUT<3> , \cnt[11]_cnt_tmp[11]_sub_7_OUT<2> , \cnt[11]_cnt_tmp[11]_sub_7_OUT<1> , \cnt[11]_cnt_tmp[11]_sub_7_OUT<0> 
}),
    .S({\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<3>_88 , \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<2>_100 , 
\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<1>_105 , \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<0>_110 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y5" ),
    .INIT ( 64'hFFFF00000000FFFF ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<2>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(cnt_2_355),
    .ADR5(cnt_tmp[2]),
    .O(\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<2>_100 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y5" ),
    .INIT ( 1'b0 ))
  cnt_diff_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_diff_1/CLK ),
    .I(\cnt[11]_cnt_tmp[11]_sub_7_OUT<1> ),
    .O(cnt_diff_1_383),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y5" ),
    .INIT ( 64'hFF00FF0000FF00FF ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<1>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(cnt_1_353),
    .ADR5(cnt_tmp[1]),
    .O(\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<1>_105 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y5" ),
    .INIT ( 1'b0 ))
  cnt_diff_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_diff_0/CLK ),
    .I(\cnt[11]_cnt_tmp[11]_sub_7_OUT<0> ),
    .O(cnt_diff_0_382),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y5" ),
    .INIT ( 64'hCCCC3333CCCC3333 ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<0>  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(cnt_0_351),
    .ADR4(cnt_tmp[0]),
    .O(\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<0>_110 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y6" ),
    .INIT ( 1'b0 ))
  cnt_diff_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_diff_7/CLK ),
    .I(\cnt[11]_cnt_tmp[11]_sub_7_OUT<7> ),
    .O(cnt_diff_7_391),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y6" ),
    .INIT ( 64'hCCCCCCCC33333333 ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<7>  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(cnt_7_365),
    .ADR5(cnt_tmp[7]),
    .O(\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<7>_116 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y6" ),
    .INIT ( 1'b0 ))
  cnt_diff_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_diff_6/CLK ),
    .I(\cnt[11]_cnt_tmp[11]_sub_7_OUT<6> ),
    .O(cnt_diff_6_390),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X16Y6" ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>  (
    .CI(\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>_384 ),
    .CYINIT(1'b0),
    .CO({\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>_389 , \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>_CO[2]_UNCONNECTED , 
\NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>_CO[1]_UNCONNECTED , \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<3> , \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<2> , 
\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<1> , \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<0> }),
    .O({\cnt[11]_cnt_tmp[11]_sub_7_OUT<7> , \cnt[11]_cnt_tmp[11]_sub_7_OUT<6> , \cnt[11]_cnt_tmp[11]_sub_7_OUT<5> , \cnt[11]_cnt_tmp[11]_sub_7_OUT<4> 
}),
    .S({\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<7>_116 , \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<6>_128 , 
\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<5>_133 , \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<4>_138 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y6" ),
    .INIT ( 64'hFFFF00000000FFFF ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<6>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(cnt_6_363),
    .ADR4(cnt_tmp[6]),
    .O(\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<6>_128 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y6" ),
    .INIT ( 1'b0 ))
  cnt_diff_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_diff_5/CLK ),
    .I(\cnt[11]_cnt_tmp[11]_sub_7_OUT<5> ),
    .O(cnt_diff_5_388),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y6" ),
    .INIT ( 64'hCCCC3333CCCC3333 ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<5>  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(cnt_5_361),
    .ADR4(cnt_tmp[5]),
    .O(\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<5>_133 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y6" ),
    .INIT ( 1'b0 ))
  cnt_diff_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_diff_4/CLK ),
    .I(\cnt[11]_cnt_tmp[11]_sub_7_OUT<4> ),
    .O(cnt_diff_4_387),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y6" ),
    .INIT ( 64'hCCCCCCCC33333333 ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<4>  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(cnt_4_359),
    .ADR5(cnt_tmp[4]),
    .O(\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<4>_138 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y7" ),
    .INIT ( 1'b0 ))
  cnt_diff_11 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_diff_11/CLK ),
    .I(\cnt[11]_cnt_tmp[11]_sub_7_OUT<11> ),
    .O(cnt_diff_11_395),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y7" ),
    .INIT ( 64'hFF0000FFFF0000FF ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<11>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(cnt_11_373),
    .ADR3(cnt_tmp[11]),
    .O(\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<11>_143 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y7" ),
    .INIT ( 1'b0 ))
  cnt_diff_10 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_diff_10/CLK ),
    .I(\cnt[11]_cnt_tmp[11]_sub_7_OUT<10> ),
    .O(cnt_diff_10_394),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X16Y7" ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>  (
    .CI(\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>_389 ),
    .CYINIT(1'b0),
    .CO({\NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>_CO[3]_UNCONNECTED , \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>_CO[2]_UNCONNECTED , 
\NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>_CO[1]_UNCONNECTED , \NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>_DI[3]_UNCONNECTED , \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>/DI<2> , 
\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>/DI<1> , \NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>/DI<0> }),
    .O({\cnt[11]_cnt_tmp[11]_sub_7_OUT<11> , \cnt[11]_cnt_tmp[11]_sub_7_OUT<10> , \cnt[11]_cnt_tmp[11]_sub_7_OUT<9> , 
\cnt[11]_cnt_tmp[11]_sub_7_OUT<8> }),
    .S({\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<11>_143 , \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<10>_154 , 
\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<9>_159 , \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<8>_164 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y7" ),
    .INIT ( 64'hFFFF00000000FFFF ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<10>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(cnt_10_371),
    .ADR5(cnt_tmp[10]),
    .O(\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<10>_154 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y7" ),
    .INIT ( 1'b0 ))
  cnt_diff_9 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_diff_9/CLK ),
    .I(\cnt[11]_cnt_tmp[11]_sub_7_OUT<9> ),
    .O(cnt_diff_9_393),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y7" ),
    .INIT ( 64'hFF00FF0000FF00FF ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<9>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(cnt_9_369),
    .ADR5(cnt_tmp[9]),
    .O(\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<9>_159 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y7" ),
    .INIT ( 1'b0 ))
  cnt_diff_8 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_diff_8/CLK ),
    .I(\cnt[11]_cnt_tmp[11]_sub_7_OUT<8> ),
    .O(cnt_diff_8_392),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y7" ),
    .INIT ( 64'hCCCC3333CCCC3333 ))
  \Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<8>  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(cnt_8_367),
    .ADR4(cnt_tmp[8]),
    .O(\Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_lut<8>_164 )
  );
  X_OPAD #(
    .LOC ( "PAD219" ))
  \cnt<4>  (
    .PAD(cnt[4])
  );
  X_OBUF #(
    .LOC ( "PAD219" ))
  cnt_4_OBUF (
    .I(\NlwBufferSignal_cnt_4_OBUF/I ),
    .O(cnt[4])
  );
  X_OPAD #(
    .LOC ( "PAD220" ))
  \cnt<5>  (
    .PAD(cnt[5])
  );
  X_OBUF #(
    .LOC ( "PAD220" ))
  cnt_5_OBUF (
    .I(\NlwBufferSignal_cnt_5_OBUF/I ),
    .O(cnt[5])
  );
  X_OPAD #(
    .LOC ( "PAD221" ))
  \cnt<6>  (
    .PAD(cnt[6])
  );
  X_OBUF #(
    .LOC ( "PAD221" ))
  cnt_6_OBUF (
    .I(\NlwBufferSignal_cnt_6_OBUF/I ),
    .O(cnt[6])
  );
  X_OPAD #(
    .LOC ( "PAD228" ))
  \reset_latch.PAD  (
    .PAD(reset_latch)
  );
  X_OBUF #(
    .LOC ( "PAD228" ))
  reset_latch_OBUF (
    .I(\NlwBufferSignal_reset_latch_OBUF/I ),
    .O(reset_latch)
  );
  X_OPAD #(
    .LOC ( "PAD222" ))
  \cnt<7>  (
    .PAD(cnt[7])
  );
  X_OBUF #(
    .LOC ( "PAD222" ))
  cnt_7_OBUF (
    .I(\NlwBufferSignal_cnt_7_OBUF/I ),
    .O(cnt[7])
  );
  X_OPAD #(
    .LOC ( "PAD223" ))
  \cnt<8>  (
    .PAD(cnt[8])
  );
  X_OBUF #(
    .LOC ( "PAD223" ))
  cnt_8_OBUF (
    .I(\NlwBufferSignal_cnt_8_OBUF/I ),
    .O(cnt[8])
  );
  X_OPAD #(
    .LOC ( "PAD224" ))
  \cnt<9>  (
    .PAD(cnt[9])
  );
  X_OBUF #(
    .LOC ( "PAD224" ))
  cnt_9_OBUF (
    .I(\NlwBufferSignal_cnt_9_OBUF/I ),
    .O(cnt[9])
  );
  X_OPAD #(
    .LOC ( "PAD225" ))
  \cnt<10>  (
    .PAD(cnt[10])
  );
  X_OBUF #(
    .LOC ( "PAD225" ))
  cnt_10_OBUF (
    .I(\NlwBufferSignal_cnt_10_OBUF/I ),
    .O(cnt[10])
  );
  X_IPAD #(
    .LOC ( "PAD314" ))
  clk_osr_105 (
    .PAD(clk_osr)
  );
  X_BUF #(
    .LOC ( "PAD314" ))
  \clk_osr_BUFGP/IBUFG  (
    .O(\clk_osr_BUFGP/IBUFG_184 ),
    .I(clk_osr)
  );
  X_BUF #(
    .LOC ( "PAD314" ))
  \ProtoComp14.IMUX  (
    .I(\clk_osr_BUFGP/IBUFG_184 ),
    .O(\clk_osr_BUFGP/IBUFG_0 )
  );
  X_OPAD #(
    .LOC ( "PAD226" ))
  \cnt<11>  (
    .PAD(cnt[11])
  );
  X_OBUF #(
    .LOC ( "PAD226" ))
  cnt_11_OBUF (
    .I(\NlwBufferSignal_cnt_11_OBUF/I ),
    .O(cnt[11])
  );
  X_OPAD #(
    .LOC ( "PAD214" ))
  \dir.PAD  (
    .PAD(dir)
  );
  X_OBUF #(
    .LOC ( "PAD214" ))
  dir_OBUF (
    .I(\NlwBufferSignal_dir_OBUF/I ),
    .O(dir)
  );
  X_OPAD #(
    .LOC ( "PAD241" ))
  \cnt_diff<10>  (
    .PAD(cnt_diff[10])
  );
  X_OBUF #(
    .LOC ( "PAD241" ))
  cnt_diff_10_OBUF (
    .I(\NlwBufferSignal_cnt_diff_10_OBUF/I ),
    .O(cnt_diff[10])
  );
  X_OPAD #(
    .LOC ( "PAD242" ))
  \cnt_diff<11>  (
    .PAD(cnt_diff[11])
  );
  X_OBUF #(
    .LOC ( "PAD242" ))
  cnt_diff_11_OBUF (
    .I(\NlwBufferSignal_cnt_diff_11_OBUF/I ),
    .O(cnt_diff[11])
  );
  X_OPAD #(
    .LOC ( "PAD229" ))
  \cnt_diff<0>  (
    .PAD(cnt_diff[0])
  );
  X_OBUF #(
    .LOC ( "PAD229" ))
  cnt_diff_0_OBUF (
    .I(\NlwBufferSignal_cnt_diff_0_OBUF/I ),
    .O(cnt_diff[0])
  );
  X_OPAD #(
    .LOC ( "PAD230" ))
  \cnt_diff<1>  (
    .PAD(cnt_diff[1])
  );
  X_OBUF #(
    .LOC ( "PAD230" ))
  cnt_diff_1_OBUF (
    .I(\NlwBufferSignal_cnt_diff_1_OBUF/I ),
    .O(cnt_diff[1])
  );
  X_IPAD #(
    .LOC ( "PAD209" ))
  D_out_m_127 (
    .PAD(D_out_m)
  );
  X_BUF #(
    .LOC ( "PAD209" ))
  D_out_m_IBUF (
    .O(D_out_m_IBUF_199),
    .I(D_out_m)
  );
  X_BUF #(
    .LOC ( "PAD209" ))
  \ProtoComp14.IMUX.1  (
    .I(D_out_m_IBUF_199),
    .O(D_out_m_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD227" ))
  \cnt_diff<2>  (
    .PAD(cnt_diff[2])
  );
  X_OBUF #(
    .LOC ( "PAD227" ))
  cnt_diff_2_OBUF (
    .I(\NlwBufferSignal_cnt_diff_2_OBUF/I ),
    .O(cnt_diff[2])
  );
  X_IPAD #(
    .LOC ( "PAD210" ))
  D_out_p_134 (
    .PAD(D_out_p)
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  D_out_p_IBUF (
    .O(D_out_p_IBUF_204),
    .I(D_out_p)
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  \ProtoComp14.IMUX.2  (
    .I(D_out_p_IBUF_204),
    .O(D_out_p_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD232" ))
  \cnt_diff<3>  (
    .PAD(cnt_diff[3])
  );
  X_OBUF #(
    .LOC ( "PAD232" ))
  cnt_diff_3_OBUF (
    .I(\NlwBufferSignal_cnt_diff_3_OBUF/I ),
    .O(cnt_diff[3])
  );
  X_OPAD #(
    .LOC ( "PAD233" ))
  \cnt_diff<4>  (
    .PAD(cnt_diff[4])
  );
  X_OBUF #(
    .LOC ( "PAD233" ))
  cnt_diff_4_OBUF (
    .I(\NlwBufferSignal_cnt_diff_4_OBUF/I ),
    .O(cnt_diff[4])
  );
  X_OPAD #(
    .LOC ( "PAD234" ))
  \cnt_diff<5>  (
    .PAD(cnt_diff[5])
  );
  X_OBUF #(
    .LOC ( "PAD234" ))
  cnt_diff_5_OBUF (
    .I(\NlwBufferSignal_cnt_diff_5_OBUF/I ),
    .O(cnt_diff[5])
  );
  X_OPAD #(
    .LOC ( "PAD235" ))
  \cnt_diff<6>  (
    .PAD(cnt_diff[6])
  );
  X_OBUF #(
    .LOC ( "PAD235" ))
  cnt_diff_6_OBUF (
    .I(\NlwBufferSignal_cnt_diff_6_OBUF/I ),
    .O(cnt_diff[6])
  );
  X_OPAD #(
    .LOC ( "PAD236" ))
  \cnt_diff<7>  (
    .PAD(cnt_diff[7])
  );
  X_OBUF #(
    .LOC ( "PAD236" ))
  cnt_diff_7_OBUF (
    .I(\NlwBufferSignal_cnt_diff_7_OBUF/I ),
    .O(cnt_diff[7])
  );
  X_OPAD #(
    .LOC ( "PAD237" ))
  \cnt_diff<8>  (
    .PAD(cnt_diff[8])
  );
  X_OBUF #(
    .LOC ( "PAD237" ))
  cnt_diff_8_OBUF (
    .I(\NlwBufferSignal_cnt_diff_8_OBUF/I ),
    .O(cnt_diff[8])
  );
  X_OPAD #(
    .LOC ( "PAD211" ))
  \cap_state<0>  (
    .PAD(cap_state[0])
  );
  X_OBUF #(
    .LOC ( "PAD211" ))
  cap_state_0_OBUF (
    .I(\NlwBufferSignal_cap_state_0_OBUF/I ),
    .O(cap_state[0])
  );
  X_OPAD #(
    .LOC ( "PAD238" ))
  \cnt_diff<9>  (
    .PAD(cnt_diff[9])
  );
  X_OBUF #(
    .LOC ( "PAD238" ))
  cnt_diff_9_OBUF (
    .I(\NlwBufferSignal_cnt_diff_9_OBUF/I ),
    .O(cnt_diff[9])
  );
  X_OPAD #(
    .LOC ( "PAD212" ))
  \cap_state<1>  (
    .PAD(cap_state[1])
  );
  X_OBUF #(
    .LOC ( "PAD212" ))
  cap_state_1_OBUF (
    .I(\NlwBufferSignal_cap_state_1_OBUF/I ),
    .O(cap_state[1])
  );
  X_OPAD #(
    .LOC ( "PAD213" ))
  \cap_state<2>  (
    .PAD(cap_state[2])
  );
  X_OBUF #(
    .LOC ( "PAD213" ))
  cap_state_2_OBUF (
    .I(\NlwBufferSignal_cap_state_2_OBUF/I ),
    .O(cap_state[2])
  );
  X_OPAD #(
    .LOC ( "PAD215" ))
  \cnt<0>  (
    .PAD(cnt[0])
  );
  X_OBUF #(
    .LOC ( "PAD215" ))
  cnt_0_OBUF (
    .I(\NlwBufferSignal_cnt_0_OBUF/I ),
    .O(cnt[0])
  );
  X_IPAD #(
    .LOC ( "PAD318" ))
  clk_rst_latch_171 (
    .PAD(clk_rst_latch)
  );
  X_BUF #(
    .LOC ( "PAD318" ))
  \clk_rst_latch_BUFGP/IBUFG  (
    .O(\clk_rst_latch_BUFGP/IBUFG_229 ),
    .I(clk_rst_latch)
  );
  X_BUF #(
    .LOC ( "PAD318" ))
  \ProtoComp14.IMUX.3  (
    .I(\clk_rst_latch_BUFGP/IBUFG_229 ),
    .O(\clk_rst_latch_BUFGP/IBUFG_0 )
  );
  X_OPAD #(
    .LOC ( "PAD216" ))
  \cnt<1>  (
    .PAD(cnt[1])
  );
  X_OBUF #(
    .LOC ( "PAD216" ))
  cnt_1_OBUF (
    .I(\NlwBufferSignal_cnt_1_OBUF/I ),
    .O(cnt[1])
  );
  X_OPAD #(
    .LOC ( "PAD217" ))
  \cnt<2>  (
    .PAD(cnt[2])
  );
  X_OBUF #(
    .LOC ( "PAD217" ))
  cnt_2_OBUF (
    .I(\NlwBufferSignal_cnt_2_OBUF/I ),
    .O(cnt[2])
  );
  X_IPAD #(
    .LOC ( "PAD231" ))
  reset_cnt_181 (
    .PAD(reset_cnt)
  );
  X_BUF #(
    .LOC ( "PAD231" ))
  reset_cnt_IBUF (
    .O(reset_cnt_IBUF_236),
    .I(reset_cnt)
  );
  X_BUF #(
    .LOC ( "PAD231" ))
  \ProtoComp14.IMUX.4  (
    .I(reset_cnt_IBUF_236),
    .O(reset_cnt_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD218" ))
  \cnt<3>  (
    .PAD(cnt[3])
  );
  X_OBUF #(
    .LOC ( "PAD218" ))
  cnt_3_OBUF (
    .I(\NlwBufferSignal_cnt_3_OBUF/I ),
    .O(cnt[3])
  );
  X_FF #(
    .LOC ( "SLICE_X16Y4" ),
    .INIT ( 1'b0 ))
  cnt_tmp_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_tmp_7/CLK ),
    .I(\NlwBufferSignal_cnt_tmp_7/IN ),
    .O(cnt_tmp[7]),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y4" ),
    .INIT ( 1'b0 ))
  cnt_tmp_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_tmp_6/CLK ),
    .I(\NlwBufferSignal_cnt_tmp_6/IN ),
    .O(cnt_tmp[6]),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y4" ),
    .INIT ( 1'b0 ))
  cnt_tmp_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_tmp_5/CLK ),
    .I(\NlwBufferSignal_cnt_tmp_5/IN ),
    .O(cnt_tmp[5]),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y4" ),
    .INIT ( 1'b0 ))
  cnt_tmp_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_tmp_4/CLK ),
    .I(\NlwBufferSignal_cnt_tmp_4/IN ),
    .O(cnt_tmp[4]),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y5" ),
    .INIT ( 1'b0 ))
  cnt_tmp_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_tmp_3/CLK ),
    .I(\NlwBufferSignal_cnt_tmp_3/IN ),
    .O(cnt_tmp[3]),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y5" ),
    .INIT ( 1'b0 ))
  cnt_tmp_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_tmp_2/CLK ),
    .I(\NlwBufferSignal_cnt_tmp_2/IN ),
    .O(cnt_tmp[2]),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y5" ),
    .INIT ( 1'b0 ))
  cnt_tmp_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_tmp_1/CLK ),
    .I(\NlwBufferSignal_cnt_tmp_1/IN ),
    .O(cnt_tmp[1]),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y5" ),
    .INIT ( 1'b0 ))
  cnt_tmp_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_tmp_0/CLK ),
    .I(\NlwBufferSignal_cnt_tmp_0/IN ),
    .O(cnt_tmp[0]),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y7" ),
    .INIT ( 1'b0 ))
  cnt_tmp_11 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_tmp_11/CLK ),
    .I(\NlwBufferSignal_cnt_tmp_11/IN ),
    .O(cnt_tmp[11]),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y7" ),
    .INIT ( 1'b0 ))
  cnt_tmp_10 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_tmp_10/CLK ),
    .I(\NlwBufferSignal_cnt_tmp_10/IN ),
    .O(cnt_tmp[10]),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y7" ),
    .INIT ( 1'b0 ))
  cnt_tmp_9 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_tmp_9/CLK ),
    .I(\NlwBufferSignal_cnt_tmp_9/IN ),
    .O(cnt_tmp[9]),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y7" ),
    .INIT ( 1'b0 ))
  cnt_tmp_8 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cnt_tmp_8/CLK ),
    .I(\NlwBufferSignal_cnt_tmp_8/IN ),
    .O(cnt_tmp[8]),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_INV   INV_dirCLK (
    .I(D_out_change),
    .O(\dir_OBUF/INV_dirCLK )
  );
  X_INV   INV_cap_state_FSM_FFd3CLK (
    .I(D_out_change),
    .O(\dir_OBUF/INV_cap_state_FSM_FFd3CLK )
  );
  X_INV   INV_cap_state_FSM_FFd2CLK (
    .I(D_out_change),
    .O(\dir_OBUF/INV_cap_state_FSM_FFd2CLK )
  );
  X_INV   INV_cap_state_FSM_FFd1CLK (
    .I(D_out_change),
    .O(\dir_OBUF/INV_cap_state_FSM_FFd1CLK )
  );
  X_BUF   \dir_OBUF/dir_OBUF_DMUX_Delay  (
    .I(D_out_change_pack_6),
    .O(D_out_change)
  );
  X_BUF   \dir_OBUF/dir_OBUF_AMUX_Delay  (
    .I(cap_state_FSM_FFd1_pack_2),
    .O(cap_state_FSM_FFd1_374)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 64'hFF0FFF0FFF0FFF0F ))
  D_out_change_inv11 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(D_out_p_IBUF_0),
    .ADR3(D_out_m_IBUF_0),
    .ADR5(1'b1),
    .O(D_out_change_inv)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 32'h00F000F0 ))
  D_out_change11 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(D_out_p_IBUF_0),
    .ADR3(D_out_m_IBUF_0),
    .O(D_out_change_pack_6)
  );
  X_FF #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 1'b0 ))
  dir_208 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_dir/CLK ),
    .I(dir_INV_4_o),
    .O(dir_OBUF_344),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  dir_INV_4_o1_INV_0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(dir_OBUF_344),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(dir_INV_4_o)
  );
  X_FF #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 1'b0 ))
  cap_state_FSM_FFd3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cap_state_FSM_FFd3/CLK ),
    .I(\cap_state_FSM_FFd3-In ),
    .O(cap_state_FSM_FFd3_349),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \cap_state_FSM_FFd3-In1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(cap_state_FSM_FFd3_349),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\cap_state_FSM_FFd3-In )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 1'b0 ))
  cap_state_FSM_FFd2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cap_state_FSM_FFd2/CLK ),
    .I(\cap_state_FSM_FFd2-In ),
    .O(cap_state_FSM_FFd2_375),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 64'h3333444433334444 ))
  \cap_state_FSM_FFd2-In1  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(cap_state_FSM_FFd1_374),
    .ADR4(cap_state_FSM_FFd2_375),
    .ADR1(cap_state_FSM_FFd3_349),
    .ADR5(1'b1),
    .O(\cap_state_FSM_FFd2-In )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 32'hEEEE2222 ))
  \cap_state_FSM_FFd1-In1  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(cap_state_FSM_FFd1_374),
    .ADR4(cap_state_FSM_FFd2_375),
    .ADR1(cap_state_FSM_FFd3_349),
    .O(\cap_state_FSM_FFd1-In )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 1'b0 ))
  cap_state_FSM_FFd1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_cap_state_FSM_FFd1/CLK ),
    .I(\cap_state_FSM_FFd1-In ),
    .O(cap_state_FSM_FFd1_pack_2),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_INV   INV_reset_latch_flagCLK (
    .I(D_out_change),
    .O(\reset_latch_flag/INV_reset_latch_flagCLK )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y22" ),
    .INIT ( 1'b0 ))
  reset_latch_flag (
    .CE(VCC),
    .CLK(\NlwBufferSignal_reset_latch_flag/CLK ),
    .I(reset_latch_flag_INV_6_o),
    .O(reset_latch_flag_346),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y22" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  reset_latch_flag_INV_6_o1_INV_0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(reset_latch_flag_346),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(reset_latch_flag_INV_6_o)
  );
  X_FF #(
    .LOC ( "SLICE_X24Y23" ),
    .INIT ( 1'b0 ))
  reset_latch_216 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_reset_latch/CLK ),
    .I(reset_latch_flag_reset_latch_flag_tmp_not_equal_4_o),
    .O(reset_latch_OBUF_348),
    .RST(reset_cnt_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y23" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  reset_latch_flag_reset_latch_flag_tmp_not_equal_4_o1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR5(reset_latch_flag_346),
    .ADR3(reset_latch_flag_tmp_347),
    .O(reset_latch_flag_reset_latch_flag_tmp_not_equal_4_o)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y25" ),
    .INIT ( 1'b0 ))
  reset_latch_flag_tmp (
    .CE(VCC),
    .CLK(\NlwBufferSignal_reset_latch_flag_tmp/CLK ),
    .I(\NlwBufferSignal_reset_latch_flag_tmp/IN ),
    .O(reset_latch_flag_tmp_347),
    .RST(GND),
    .SET(GND)
  );
  X_BUF   \NlwBufferBlock_clk_rst_latch_BUFGP/BUFG/IN  (
    .I(\clk_rst_latch_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_clk_rst_latch_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_clk_osr_BUFGP/BUFG/IN  (
    .I(\clk_osr_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_clk_osr_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_cnt_3/CLK  (
    .I(D_out_change_inv),
    .O(\NlwBufferSignal_cnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_2/CLK  (
    .I(D_out_change_inv),
    .O(\NlwBufferSignal_cnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_1/CLK  (
    .I(D_out_change_inv),
    .O(\NlwBufferSignal_cnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_0/CLK  (
    .I(D_out_change_inv),
    .O(\NlwBufferSignal_cnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_7/CLK  (
    .I(D_out_change_inv),
    .O(\NlwBufferSignal_cnt_7/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_6/CLK  (
    .I(D_out_change_inv),
    .O(\NlwBufferSignal_cnt_6/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_5/CLK  (
    .I(D_out_change_inv),
    .O(\NlwBufferSignal_cnt_5/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_4/CLK  (
    .I(D_out_change_inv),
    .O(\NlwBufferSignal_cnt_4/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_11/CLK  (
    .I(D_out_change_inv),
    .O(\NlwBufferSignal_cnt_11/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_10/CLK  (
    .I(D_out_change_inv),
    .O(\NlwBufferSignal_cnt_10/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_9/CLK  (
    .I(D_out_change_inv),
    .O(\NlwBufferSignal_cnt_9/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_8/CLK  (
    .I(D_out_change_inv),
    .O(\NlwBufferSignal_cnt_8/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_3/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_diff_3/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_2/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_diff_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<0>  (
    .I(cnt_0_351),
    .O(\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<1>  (
    .I(cnt_1_353),
    .O(\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<2>  (
    .I(cnt_2_355),
    .O(\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<3>  (
    .I(cnt_3_357),
    .O(\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<3>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_1/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_diff_1/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_0/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_diff_0/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_7/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_diff_7/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_6/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_diff_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<0>  (
    .I(cnt_4_359),
    .O(\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<1>  (
    .I(cnt_5_361),
    .O(\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<2>  (
    .I(cnt_6_363),
    .O(\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<3>  (
    .I(cnt_7_365),
    .O(\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_cy<7>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_5/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_diff_5/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_4/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_diff_4/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_11/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_diff_11/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_10/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_diff_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>/DI<0>  (
    .I(cnt_8_367),
    .O(\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>/DI<1>  (
    .I(cnt_9_369),
    .O(\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>/DI<2>  (
    .I(cnt_10_371),
    .O(\NlwBufferSignal_Msub_cnt[11]_cnt_tmp[11]_sub_7_OUT_xor<11>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_9/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_diff_9/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_8/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_diff_8/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_4_OBUF/I  (
    .I(cnt_4_359),
    .O(\NlwBufferSignal_cnt_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_5_OBUF/I  (
    .I(cnt_5_361),
    .O(\NlwBufferSignal_cnt_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_6_OBUF/I  (
    .I(cnt_6_363),
    .O(\NlwBufferSignal_cnt_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_reset_latch_OBUF/I  (
    .I(reset_latch_OBUF_348),
    .O(\NlwBufferSignal_reset_latch_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_7_OBUF/I  (
    .I(cnt_7_365),
    .O(\NlwBufferSignal_cnt_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_8_OBUF/I  (
    .I(cnt_8_367),
    .O(\NlwBufferSignal_cnt_8_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_9_OBUF/I  (
    .I(cnt_9_369),
    .O(\NlwBufferSignal_cnt_9_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_10_OBUF/I  (
    .I(cnt_10_371),
    .O(\NlwBufferSignal_cnt_10_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_11_OBUF/I  (
    .I(cnt_11_373),
    .O(\NlwBufferSignal_cnt_11_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_dir_OBUF/I  (
    .I(dir_OBUF_344),
    .O(\NlwBufferSignal_dir_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_10_OBUF/I  (
    .I(cnt_diff_10_394),
    .O(\NlwBufferSignal_cnt_diff_10_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_11_OBUF/I  (
    .I(cnt_diff_11_395),
    .O(\NlwBufferSignal_cnt_diff_11_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_0_OBUF/I  (
    .I(cnt_diff_0_382),
    .O(\NlwBufferSignal_cnt_diff_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_1_OBUF/I  (
    .I(cnt_diff_1_383),
    .O(\NlwBufferSignal_cnt_diff_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_2_OBUF/I  (
    .I(cnt_diff_2_385),
    .O(\NlwBufferSignal_cnt_diff_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_3_OBUF/I  (
    .I(cnt_diff_3_386),
    .O(\NlwBufferSignal_cnt_diff_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_4_OBUF/I  (
    .I(cnt_diff_4_387),
    .O(\NlwBufferSignal_cnt_diff_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_5_OBUF/I  (
    .I(cnt_diff_5_388),
    .O(\NlwBufferSignal_cnt_diff_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_6_OBUF/I  (
    .I(cnt_diff_6_390),
    .O(\NlwBufferSignal_cnt_diff_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_7_OBUF/I  (
    .I(cnt_diff_7_391),
    .O(\NlwBufferSignal_cnt_diff_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_8_OBUF/I  (
    .I(cnt_diff_8_392),
    .O(\NlwBufferSignal_cnt_diff_8_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cap_state_0_OBUF/I  (
    .I(cap_state_FSM_FFd3_349),
    .O(\NlwBufferSignal_cap_state_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_diff_9_OBUF/I  (
    .I(cnt_diff_9_393),
    .O(\NlwBufferSignal_cnt_diff_9_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cap_state_1_OBUF/I  (
    .I(cap_state_FSM_FFd2_375),
    .O(\NlwBufferSignal_cap_state_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cap_state_2_OBUF/I  (
    .I(cap_state_FSM_FFd1_374),
    .O(\NlwBufferSignal_cap_state_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_0_OBUF/I  (
    .I(cnt_0_351),
    .O(\NlwBufferSignal_cnt_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_1_OBUF/I  (
    .I(cnt_1_353),
    .O(\NlwBufferSignal_cnt_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_2_OBUF/I  (
    .I(cnt_2_355),
    .O(\NlwBufferSignal_cnt_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_3_OBUF/I  (
    .I(cnt_3_357),
    .O(\NlwBufferSignal_cnt_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_7/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_tmp_7/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_7/IN  (
    .I(cnt_7_365),
    .O(\NlwBufferSignal_cnt_tmp_7/IN )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_6/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_tmp_6/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_6/IN  (
    .I(cnt_6_363),
    .O(\NlwBufferSignal_cnt_tmp_6/IN )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_5/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_tmp_5/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_5/IN  (
    .I(cnt_5_361),
    .O(\NlwBufferSignal_cnt_tmp_5/IN )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_4/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_tmp_4/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_4/IN  (
    .I(cnt_4_359),
    .O(\NlwBufferSignal_cnt_tmp_4/IN )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_3/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_tmp_3/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_3/IN  (
    .I(cnt_3_357),
    .O(\NlwBufferSignal_cnt_tmp_3/IN )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_2/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_tmp_2/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_2/IN  (
    .I(cnt_2_355),
    .O(\NlwBufferSignal_cnt_tmp_2/IN )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_1/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_tmp_1/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_1/IN  (
    .I(cnt_1_353),
    .O(\NlwBufferSignal_cnt_tmp_1/IN )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_0/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_tmp_0/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_0/IN  (
    .I(cnt_0_351),
    .O(\NlwBufferSignal_cnt_tmp_0/IN )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_11/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_tmp_11/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_11/IN  (
    .I(cnt_11_373),
    .O(\NlwBufferSignal_cnt_tmp_11/IN )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_10/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_tmp_10/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_10/IN  (
    .I(cnt_10_371),
    .O(\NlwBufferSignal_cnt_tmp_10/IN )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_9/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_tmp_9/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_9/IN  (
    .I(cnt_9_369),
    .O(\NlwBufferSignal_cnt_tmp_9/IN )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_8/CLK  (
    .I(clk_osr_BUFGP),
    .O(\NlwBufferSignal_cnt_tmp_8/CLK )
  );
  X_BUF   \NlwBufferBlock_cnt_tmp_8/IN  (
    .I(cnt_8_367),
    .O(\NlwBufferSignal_cnt_tmp_8/IN )
  );
  X_BUF   \NlwBufferBlock_dir/CLK  (
    .I(\dir_OBUF/INV_dirCLK ),
    .O(\NlwBufferSignal_dir/CLK )
  );
  X_BUF   \NlwBufferBlock_cap_state_FSM_FFd3/CLK  (
    .I(\dir_OBUF/INV_cap_state_FSM_FFd3CLK ),
    .O(\NlwBufferSignal_cap_state_FSM_FFd3/CLK )
  );
  X_BUF   \NlwBufferBlock_cap_state_FSM_FFd2/CLK  (
    .I(\dir_OBUF/INV_cap_state_FSM_FFd2CLK ),
    .O(\NlwBufferSignal_cap_state_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_cap_state_FSM_FFd1/CLK  (
    .I(\dir_OBUF/INV_cap_state_FSM_FFd1CLK ),
    .O(\NlwBufferSignal_cap_state_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_reset_latch_flag/CLK  (
    .I(\reset_latch_flag/INV_reset_latch_flagCLK ),
    .O(\NlwBufferSignal_reset_latch_flag/CLK )
  );
  X_BUF   \NlwBufferBlock_reset_latch/CLK  (
    .I(clk_rst_latch_BUFGP),
    .O(\NlwBufferSignal_reset_latch/CLK )
  );
  X_BUF   \NlwBufferBlock_reset_latch_flag_tmp/CLK  (
    .I(clk_rst_latch_BUFGP),
    .O(\NlwBufferSignal_reset_latch_flag_tmp/CLK )
  );
  X_BUF   \NlwBufferBlock_reset_latch_flag_tmp/IN  (
    .I(reset_latch_flag_346),
    .O(\NlwBufferSignal_reset_latch_flag_tmp/IN )
  );
  X_ONE   NlwBlock_chip_counter_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_chip_counter_GND (
    .O(GND)
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

