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
module WU_counter(
    input wire clki,
	 input wire wake_up,
	 input wire trig_to_siggen,
	 output reg [19:0] total_triggers,
	 output reg [19:0] TP,
	 output reg [19:0] FP,
	 output reg [19:0] missed_triggers,
	 output reg [15:0] timediff[0:1000]
	 );
	
	reg[2:0] wakeup_buf;
	reg[2:0] trig_buf;
	
	
	reg [31:0] tim_cnt;
	reg tim_enb;
	reg look_for_wakeup;
	
	
	wire wakeup_risingedge = (wakeup_buf[2:1] == 2'b01);
	wire trig_risingedge = (trig_buf[2:1] == 2'b01);
	
	
	always @(posedge clki) begin
		wakeup_buf <= {wakeup_buf[1:0], wake_up};
		trig_buf <= {trig_buf[1:0], trig_to_siggen};
		
		if(trig_risingedge) begin
			total_triggers <= total_triggers + 1;
			tim_enb <= 1;
		end
		
		// 750us timer == 750e-6*100e6 = 75000
		if(tim_enb) begin
			if(tim_cnt < 75000) begin
				tim_cnt <= tim_cnt + 1;
				timediff[]
			end
			else begin
				tim_cnt <= 0;
				tim_enb <= 0;
			end
		end
		
		if(wakeup_risingedge) begin
			if ((tim_cnt > 60000) && (tim_cnt < 75000)) begin
				TP <= TP + 1;
			end
			if (tim_cnt < 60000) begin
				FP <= FP + 1;
			end
			if (tim_cnt > 75000) begin
				missed_triggers <= missed_triggers + 1;
			end
		end

	end	
	
		
/*	always @(posedge clki) begin

	end*/
	
	
endmodule
