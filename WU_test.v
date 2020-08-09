`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:07:05 06/21/2016 
// Design Name: 
// Module Name:    WU_test 
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
module WU_test(
    input wire clki,
    input wire Corr_data_clk_enb,
	 input wire Corr_data_enb,
	 input wire data_out,
	 output wire	Corr_data_IN,
	 output reg	[11:0] Corr_data_out
	 );

	parameter M = 168634;   	//SC_clk = 100/M MHz
	reg [25:0] cnt;  				//frequency divider counter
   reg clk_o;
	reg data_out_clk;
	
	assign Corr_data_IN = 0;
	
	always @ (posedge clki) begin  	 // frequency divider : clki -> RDAC_clck (100MHz -> 100/M MHz)
		if(Corr_data_clk_enb)   begin
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
		data_out_clk <= data_out;
	end
   
//	always @ (negedge clk_o) begin
//      if(Corr_data_enb)        begin
//            Corr_data_out <= 0;
//		end
//      else begin
//			    if(data_out)  begin
//		           Corr_data_out <= Corr_data_out + 1;
//		       end
//			    else begin
//				     Corr_data_out <= Corr_data_out;
//				 end
//		end
// 	end
   
   always @ (posedge data_out_clk) begin
      if(Corr_data_enb)        begin
            Corr_data_out <= 0;
		end
      else begin
			   Corr_data_out <= Corr_data_out + 1;
		end
	end
	
endmodule
