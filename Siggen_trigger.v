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
	 input wire [31:0] reset,
	 output reg trig_to_siggen
	 );

	reg [31:0] sys_clk_cnt;
	reg [31:0] trig_cnt = 32'b0;
	reg trig_enb;
	
	reg[2:0] reset_buf;
	wire reset_risingedge = (reset_buf[2:1] == 2'b01);
	
   // generate clock with period 25ms == 40Hz
	parameter M = 2500000;   	//SC_clk = 100/M MHz
	
	always @(posedge clki) begin
		reset_buf <= {reset_buf[1:0],reset[0]};
		if (reset_risingedge == 1) begin
			trig_enb <= 1;
			trig_cnt <= 0;
			sys_clk_cnt <= 0;
			trig_to_siggen <= 0;
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
		
		if (trig_cnt == 1) begin
			trig_enb <= 0;
		end
	end
	
	
/*	always @(posedge clki) begin

	end*/	
endmodule
