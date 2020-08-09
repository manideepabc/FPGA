`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:14:21 05/21/2016 
// Design Name: 
// Module Name:    Correlator_test 
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
module Correlator_test(
    input wire clki,
    input wire Corr_data_clk_enb,
	 input wire Corr_data_enb,
	 input wire [31:0] data_in,
	 input wire data_out,
	 output reg	Corr_data_IN,
	 output reg	[11:0] Corr_data_out
	 );

	parameter M = 166667;   	//SC_clk = 100/M MHz
	reg [25:0] cnt;  				//frequency divider counter
   reg clk_o;
	
	
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
	end
   
	reg [6:0] cnt_data;
	parameter data_leng = 32;
	parameter data_times = 2;
	
   always @ (negedge clk_o) begin
      if(Corr_data_enb)        begin
            cnt_data <= 0;
				Corr_data_IN <= 1'b0;
				Corr_data_out <= 0;
		end
      else begin
         if(Corr_data_out >= data_times)  begin
			     cnt_data <= cnt_data;
				  Corr_data_out <= Corr_data_out;
				  Corr_data_IN <= 1'b0;
			end
		   else begin
			  if(cnt_data >= 0 && cnt_data < data_leng)    begin
              cnt_data <= cnt_data + 1;
				  Corr_data_IN <= data_in[cnt_data];
			  end				  
	        else begin
			    if(data_out)  begin
		           cnt_data <= 0;
			        Corr_data_out <= Corr_data_out + 1;
		       end
			    else begin
				     cnt_data <= cnt_data;
					  Corr_data_IN <= 1'b0;
				 end
//           cnt_data <= 0;
			  end
			end 
		end
	end
   		
endmodule

//            