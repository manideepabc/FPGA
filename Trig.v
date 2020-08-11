`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04/12/2016
// Design Name: 
// Module Name:    Siggen_trigger
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
module Trig(
    input wire clki,
	 input wire wake_up,
	 input wire WU_serviced,
	 output reg [19:0] count,
	 output reg WU_valid
	 );

	reg[2:0] wakeup_buf;
	reg [19:0] tim_count;
	reg tim_enb;
// generate SC_clk_inn
	parameter M = 10000000;   	//SC_clk = 100/M MHz
	
	always @(posedge clki) wakeup_buf <= {wakeup_buf[1:0], wake_up};
	wire wakeup_risingedge = (wakeup_buf[2:1] ==2'b01);
	
	always @(posedge clki) begin
		if(wakeup_risingedge) begin
			count <= count + 1;
			WU_valid <= 1;
			tim_count <= 0;
			tim_enb <= 1;
		end
		else begin
			count <= count;
		end
		
		//Timeout setting - 300us == 100e6*300e-6 = 30000 ticks
		if (tim_enb) begin
			tim_count <= tim_count + 1;
		end
		if(tim_count == 30000 || WU_serviced == 1) begin
			tim_enb <= 0;
			WU_valid <= 0;
		end
	end
	
	
	
	
/*	always @(posedge clki) begin

	end*/
	
	
endmodule
