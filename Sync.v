`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04/12/2016
// Design Name: 
// Module Name:    Sync
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
module Sync(
    input wire clki,
	 input wire comp_out,
	 input wire WU_valid,
	 output reg T_0,
	 output reg T_1,
	 output reg WU_serviced,
	 output reg data_clk_enb
	 );

	initial WU_serviced = 0;
	reg[2:0] sync_buf;
	always @(posedge clki) sync_buf <= {sync_buf[1:0], comp_out};
	wire sync_risingedge = (sync_buf[2:1] ==2'b01);
	
/*	reg data_bits[0:999];
	
	integer i;
	initial begin
		for(i=0;i<1000;i=i+1) begin
			if (i<192) begin
				data_bits[i] = 0;
			end
			else begin
				data_bits[i] = 1;
			end
		end
	end*/
	
	// generate 1MHz data clock
	parameter datarate_div = 100;   	//SC_clk = 100/M MHz
	reg [19:0] sys_clk_cnt;
	reg [19:0] data_clk_cnt;
	reg [19:0] tim_cnt;
	//reg data_clk_enb;
	reg data_clk;
	
	always @(posedge clki) begin
		if(sync_risingedge & WU_valid) begin
			data_clk_enb <= 1;
			data_clk <= 1'b0; // Initialize clock to 0.
			sys_clk_cnt <= datarate_div/2 - 1;
			data_clk_cnt <= 0;
			WU_serviced <= 1;
		end
		
		if (data_clk_enb) begin
			if (sys_clk_cnt == datarate_div/2 - 1) begin
				data_clk <= !data_clk;
				sys_clk_cnt <= 0; 
				data_clk_cnt <= data_clk_cnt + data_clk;				
			end
			else begin
				data_clk <= data_clk;
				sys_clk_cnt <= sys_clk_cnt + 1;
			end
		end
		
		if(data_clk_cnt == 1) begin
		    WU_serviced <= 0;
		end
		
		if(data_clk_cnt == 1000) begin
				data_clk_enb <= 0;
				data_clk_cnt <= 0;
		end	
	end
	
	always @(posedge data_clk) begin
		T_0 <= 0;
		//T_1 <= !T_1;
		
		if (data_clk_cnt < 192) begin
			T_1 <= 0;
		end
		else begin
			T_1 <= 0;
		end
	end
	
endmodule
