`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:03 05/08/2016 
// Design Name: 
// Module Name:    Chip_clk 
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
module Chip_clk(
    input wire clki,
	 input wire clk_enb,
    output reg clk_o
    );
	 
// generate SC_clk
	parameter M = 166667;   	//SC_clk = 100/M MHz
	reg [25:0] cnt;  				//frequency divider counter

	always @ (posedge clki) begin  	 // frequency divider : clki -> RDAC_clck (100MHz -> 100/M MHz)
		if(clk_enb)   begin
				cnt <= 0;
				clk_o <= 1'b0;
			 end
		else begin
			  if(cnt == M/2-1)	begin 
				clk_o <= !clk_o; 
				cnt <= 0;         
			  end
			  else begin 
				clk_o <= clk_o;  
				cnt <= cnt + 1; 
			  end
		end
	end

endmodule
