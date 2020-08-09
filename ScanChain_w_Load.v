`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:31:18 06/02/2016 
// Design Name: 
// Module Name:    ScanChain_w_Load 
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
module ScanChain_w_Load(
    input wire clki,
     input wire SC_clk_enb,
     input wire SC_data_enb,
     input wire [19:0] data_in,         // s_in from Matlab to okHost
     input wire          data_out,      // s_out from chip to okHost
     output reg          SC_data,           // s_in from okHost to chip
     output reg          SC_load,
     output reg          SC_clk,
     output reg [19:0] SC_out,          // s_out from okHost to Matlab
     output reg SC_done
     );

// generate SC_clk
    parameter M = 2000000;      //SC_clk = 100/M MHz
    parameter data_leng = 20;
    reg [25:0] cnt;                 //frequency divider counter

    always @ (posedge clki) begin    // frequency divider : clki -> RDAC_clck (100MHz -> 100/M MHz)
        if(SC_clk_enb)   begin
                cnt <= 0;
                SC_clk <= 1'b0;
             end
        else begin
              if(cnt == M/2-1)  begin 
                SC_clk <= !SC_clk; 
                cnt <= 0;
              end
              else begin 
                SC_clk <= SC_clk;
                cnt <= cnt + 1; 
              end
        end
    end
    
// generate SC_data to DUT chip and receive data from chip
    reg [11:0] cnt_data;                        // serial data count
//  wire data_tmp = data_in[cnt_data];
    always @ (negedge SC_clk) begin     // shift-in data at negedge
        if(SC_data_enb) begin
                    cnt_data <= 0;
                    SC_data <= data_in[cnt_data];
                    SC_load <= 1'b0;
                    SC_out[19:0] <= 20'b0;
                    SC_done <= 1'b0;
        end
        else begin
            if (cnt_data >= 0  && cnt_data < data_leng) begin // scan in
                    cnt_data <= cnt_data + 1; 
                    SC_data <= data_in[cnt_data];
                    SC_load <= 1'b0;
                    SC_out[19:0] <= 20'b0;
                    SC_done <= 1'b0;
            end
            else if (cnt_data == data_leng) begin // trigger the load signal then scan out the 1st bit
                    cnt_data <= cnt_data +1; 
                    SC_data <= 1'b1;
                    SC_load <= 1'b1; 
                    SC_out[19:0] <= {SC_out[18:0],data_out};
                    SC_done <= 1'b0;
            end
            else if (cnt_data > data_leng && cnt_data < 2*data_leng) begin // scan out the rest 39 bits 
                    cnt_data <= cnt_data + 1;
                    SC_data <= 1'b1;
                    SC_load <= 1'b1; 
                    SC_out[19:0] <= {SC_out[18:0],data_out};
                    SC_done <= 1'b0;
            end
            else    begin // hold scan out
                    cnt_data <= cnt_data; 
                    SC_data <= 1'b0;
                    SC_load <= 1'b0;
                    SC_out[19:0] <= SC_out[19:0];
                    SC_done <= 1'b1;
            end
        end
    end

endmodule
