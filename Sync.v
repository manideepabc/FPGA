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
	 input wire wake_up,
	 input wire comp_out,
	 output reg WU_valid,
	 output reg T_0,
	 output reg T_1,
	 output reg data_clk_enb
	 );

	initial WU_valid = 0;
	reg[2:0] sync_buf;
	reg[2:0] wakeup_buf;
	reg [19:0] tim_count;
	reg tim_enb;
	
	wire wakeup_risingedge = (wakeup_buf[2:1] ==2'b01);
	wire sync_risingedge = (sync_buf[2:1] ==2'b01);
	
	parameter datarate_div = 100;   	//SC_clk = 100/M MHz
	reg [19:0] sys_clk_cnt;
	reg [19:0] data_clk_cnt;
	reg [19:0] tim_cnt;
	//reg data_clk_enb;
	reg data_clk;
	
	always @(posedge clki) begin
	   wakeup_buf <= {wakeup_buf[1:0], wake_up};		
		sync_buf <= {sync_buf[1:0], comp_out};
		
		if(wakeup_risingedge & (WU_valid == 0)) begin
			WU_valid <= 1;
			tim_count <= 0;
			tim_enb <= 1;
		end
		
		//Timeout setting - 200us == 100e6*200e-6 = 20000 ticks -- avoiding false stage 2 triggers
		if (tim_enb) begin
			tim_count <= tim_count + 1;
		end
		if(tim_count == 60000) begin
			tim_enb <= 0;
			WU_valid <= 0;
		end
		
		if(WU_valid & (tim_count == 25342)) begin
			data_clk_enb <= 1;
			data_clk <= 1'b0; // Initialize clock to 0.
			sys_clk_cnt <= datarate_div/2 - 1;
			data_clk_cnt <= 0;
			WU_valid <= 0; //--once wakeup is serviced and finding the first rising edge on the stage 2, do not care about any more rising edges(they are noisy spikes)
		end
		
		//1MHz data clock
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
			
		if(data_clk_cnt == 1000) begin
				data_clk_enb <= 0;
				data_clk_cnt <= 0;
		end
	end

	
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
	
	
	always @(posedge data_clk) begin
		T_0 <= 0;
		//T_1 <= !T_1;
		
		if (data_clk_cnt < 432) begin
			T_1 <= 0;
		end
		else begin
			T_1 <= !T_1;
		end
	end
	
endmodule
