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
	reg WU_serviced = 1;
	
	always @(posedge clki) begin
	   wakeup_buf <= {wakeup_buf[1:0], wake_up};		
		sync_buf <= {sync_buf[1:0], comp_out};
		
		if(wakeup_risingedge & WU_serviced) begin
			WU_valid <= 1;
			tim_count <= 0;
			tim_enb <= 1;
		end
		
		//Timeout setting - 200us == 100e6*200e-6 = 20000 ticks -- avoiding false stage 2 triggers
		if (tim_enb) begin
			tim_count <= tim_count + 1;
		end
		if(tim_count == 20000) begin
			tim_enb <= 0;
		end
		
		if(sync_risingedge & WU_valid) begin
			data_clk_enb <= 1;
			data_clk <= 1'b0; // Initialize clock to 0.
			sys_clk_cnt <= datarate_div/2 - 1;
			data_clk_cnt <= 0;
			WU_valid <= 0; //--once wakeup is serviced and finding the first rising edge on the stage 2, do not care about any more rising edges(they are noisy spikes)
			WU_serviced <= 0;
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
			
		if(data_clk_cnt == 1216) begin
				data_clk_enb <= 0;
				data_clk_cnt <= 0;
				WU_serviced <= 1;
		end
	end

	
	reg data_bits[0:1215];
	reg [31:0]temp;
	integer i;
	initial begin
		for(i=0;i<1216;i=i+1) begin
			if (i < 432) begin
				data_bits[i] = 0;
			end
			else begin
				temp = (i-432)%8;
				if (temp < 4) begin
					data_bits[i] = 1;
				end
				else begin
					data_bits[i] = 0;
				end
			end
		end
	end
	reg[7:0] scrambler_reg;
	
	always @(posedge data_clk) begin
		T_0 <= 0;
		//T_1 <= !T_1;
		
		if (data_clk_cnt < 432) begin
			T_1 = 0;
			scrambler_reg = 0;
		end
		else begin 
			if (data_clk_cnt < 1200)begin
				scrambler_reg = {scrambler_reg[6:0],T_1};
				T_1 = data_bits[data_clk_cnt] ^ scrambler_reg[0] ^ scrambler_reg[3] ^ scrambler_reg[4] ^ scrambler_reg[6] ^ scrambler_reg[7];
			end
			else begin
				T_1 = 0;
			end
		end
	end
	
endmodule