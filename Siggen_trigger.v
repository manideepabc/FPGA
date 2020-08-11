`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04/12/2016
// Design Name: 
// Module Name:    ScanChain
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Siggen_trigger(
    input wire clki,
	 input wire [31:0] ep07wire,
	 output reg trig_to_siggen
	 );

	reg [31:0] sys_clk_cnt;
	reg [31:0] trig_cnt = 32'b0;
	reg trig_enb;
	
   // generate clock with period 25ms == 40Hz
	parameter M = 2500000;   	//SC_clk = 100/M MHz
	
	always @(posedge clki) begin
		if (ep07wire[0] == 1) begin
			trig_enb <= 1;
			trig_cnt <= 0;
		end
		else begin
			trig_enb <= 0;
		end
		
		if (trig_enb == 1) begin
			if (sys_clk_cnt == M/2 - 1) begin
				sys_clk_cnt <= 0;
				trig_to_siggen <= !trig_to_siggen;	
				trig_cnt <= trig_cnt + trig_to_siggen;			
			end
			else begin
				trig_to_siggen <= trig_to_siggen;
				sys_clk_cnt <= sys_clk_cnt + 1;
			end
		end
		
		if (trig_cnt == 1000) begin
			trig_enb <= 0;
		end
	end
	
	
/*	always @(posedge clki) begin

	end*/	
endmodule
