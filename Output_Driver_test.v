`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:06 05/20/2016 
// Design Name: 
// Module Name:    Output_Driver_test 
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
module Output_Driver_test(
    input wire clki,
    input wire Output_Driver_clk_enb,
	 input wire Output_Driver_enb,
	 output reg	Output_Driver_IN
    );

	parameter M = 166667;   	//SC_clk = 100/M MHz
	reg [25:0] cnt;  				//frequency divider counter
   reg clk_o;
	
   always @ (posedge clki) begin  	 // frequency divider : clki -> RDAC_clck (100MHz -> 100/M MHz)
		if(Output_Driver_clk_enb)   begin
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
   
	reg [7:0] cnt_data;
	parameter data_leng = 128;
	
   always @ (negedge clk_o) begin
      if(Output_Driver_enb)        begin
            cnt_data <= 0;
            Output_Driver_IN <= 1'b0;
      end
      else begin
           if(cnt_data >= 0  && cnt_data < data_leng)    begin
              cnt_data <= cnt_data + 1;
              Output_Driver_IN <= 1'b0;
           end				  
	        else if (cnt_data == data_leng)	begin
			     cnt_data <= cnt_data +1; 
			     Output_Driver_IN <= 1'b1;
			  end
			  else begin
			     cnt_data <= 0;
			     Output_Driver_IN <= 1'b0;
			  end
		end
   end		
endmodule
