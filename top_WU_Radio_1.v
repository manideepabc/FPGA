`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04/12/201 
// Design Name: 
// Module Name:    top_HighDRADC 
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
module top_WU_Radio_1(
	 input  wire sys_clkp,  		 // input clock from x-stal
	 input  wire sys_clkn,  		 // input clock from x-stal
//	 output wire clk_o,	 			 // 600 Hz chip clock ED
//  output wire clk_o_comp,	 	 // 600 Hz chip clock Comp	 
//	 output wire ed_osc_en,        // ED CLK EN
//	 output wire bb_osc_en,        // BB CLK EN
	 
//	 output wire output_driver_en,     // Output Driver EN
//	 output wire correlator_en,        // Correlator EN
	 
	 output wire [7:0]   led,

	 input  wire [4:0]   okUH,
	 output wire [2:0]   okHU,
    inout  wire [31:0]  okUHU,
	 inout  wire         okAA,
	 
	 input  wire s_chipout, //chip to FPGA
//	 input  wire s_chipout_BB,
//	 input  wire s_chipout_TH,
//	 input  wire s_chipout_comp,
//	 input  wire corr_chipout,
	 
//  BLE	 
//	 input  wire comp_out,
//	 input  wire wake_up,
	 
	 output wire sc_data,   //FPGA to chip
//	 output wire sc_data_BB,
//  output wire sc_data_TH,
//	 output wire sc_data_comp,
	
	 output wire sc_clk,
//	 output wire sc_clk_BB,
//	 output wire sc_clk_TH,
//	 output wire sc_clk_comp,
	 
//	 output wire sc_reset,
//	 output wire sc_reset_BB,
//  output wire preset,
	 output wire T_1,
	 output wire T_0,
	 output wire WU_serviced,
//	 output wire comp_in,
//  output wire duty_cycle
	 
	 //comparator
//	 output wire sc_load_comp,
//	 output wire en_vddtest,
	 
	 //BB test
//	 output wire output_driver_IN,
//	 output wire corr_data_IN
	 input wire comp_out,
	 input wire wake_up
	 );

// genarate 100MHz Clock from x-stal	
	wire sys_clk;
//	assign clk_o = sys_clk;
	IBUFGDS #(.IOSTANDARD("LVDS_33")) osc_clk(.O(sys_clk), .I(sys_clkp), .IB(sys_clkn));
	
// generate 600 Hz chip clock
//ED
//Chip_clk Chip_clk_1(
//    .clki(sys_clk),
//	 .clk_enb(ep00wire[29]),
//	 .clk_o(clk_o)
//	 );
//Comp
//Chip_clk Chip_clk_2(
//  .clki(sys_clk),
//	 .clk_enb(ep06wire[29]),
//	 .clk_o(clk_o_comp)
//	 );
//assign clk_o = 1;
//assign clk_o_comp = 1;
	 
// CLK enable from PAD
//assign ed_osc_en = 1;
//assign bb_osc_en = 1;
//assign sc_reset_BB = 0;

//testing purpose
//assign output_driver_en = 1;
//assign correlator_en = 1;

// enbale or disable in Matlab
//assign preset = ep00wire[29];
//assign T_1 = ep00wire[28];
//assign T_0 = ep00wire[27];

//assign comp_in = 0;
//assign duty_cycle = 0;
// Target interface bus:
wire         okClk;
wire [112:0] okHE;
wire [64:0]  okEH;
wire [31:0]  ep00wire;
wire [31:0]  ep01wire;
wire [31:0]  ep02wire;
wire [31:0]  ep03wire;
wire [31:0]  ep04wire;
wire [31:0]  ep05wire;
wire [31:0]  ep06wire;
//wire [31:0]  ep07wire;
//wire [31:0]  ep08wire;
//wire [31:0]  ep09wire;
//wire [31:0]  ep0Awire;
//wire [31:0]  ep0Bwire;
wire [99:0]   sc_out;
wire 		     sc_done;
//wire [63:0]   sc_out_BB;
//wire 		     sc_done_BB;
//wire [11:0]   sc_out_TH;
//wire 		     sc_done_TH;
//wire [19:0]   sc_out_comp;
//wire 		     sc_done_comp;
//wire [11:0]   corr_data_out;
reg [31:0]   ep20wire;
reg [31:0]   ep21wire;
reg [31:0]   ep22wire;
reg [31:0]   ep23wire;
reg [31:0]   ep24wire;
reg [31:0]   ep25wire;
reg [31:0]   ep26wire;
reg [31:0]   ep27wire;
wire [19:0] count;
wire WU_valid;
//wire WU_serviced;
wire data_clk_enb;

// Instantiate the okHost and connect endpoints.
wire [65*8-1:0]  okEHx;

okHost okHI(
	.okUH(okUH),
	.okHU(okHU),
	.okUHU(okUHU),
	.okAA(okAA),
	.okClk(okClk),
	.okHE(okHE), 
	.okEH(okEH)
);

okWireOR # (.N(8)) wireOR (okEH, okEHx);

// Interface with PC
okWireIn     wi00(.okHE(okHE),.ep_addr(8'h00), .ep_dataout(ep00wire));
okWireIn     wi01(.okHE(okHE),.ep_addr(8'h01), .ep_dataout(ep01wire));
okWireIn     wi02(.okHE(okHE),.ep_addr(8'h02), .ep_dataout(ep02wire));
okWireIn     wi03(.okHE(okHE),.ep_addr(8'h03), .ep_dataout(ep03wire));
okWireIn     wi04(.okHE(okHE),.ep_addr(8'h04), .ep_dataout(ep04wire));
okWireIn     wi05(.okHE(okHE),.ep_addr(8'h05), .ep_dataout(ep05wire));
okWireIn     wi06(.okHE(okHE),.ep_addr(8'h06), .ep_dataout(ep06wire));
okWireOut    wo20(.okHE(okHE), .okEH(okEHx[ 0*65 +: 65 ]), .ep_addr(8'h20), .ep_datain(ep20wire));
okWireOut    wo21(.okHE(okHE), .okEH(okEHx[ 1*65 +: 65 ]), .ep_addr(8'h21), .ep_datain(ep21wire));
okWireOut    wo22(.okHE(okHE), .okEH(okEHx[ 2*65 +: 65 ]), .ep_addr(8'h22), .ep_datain(ep22wire));
okWireOut    wo23(.okHE(okHE), .okEH(okEHx[ 3*65 +: 65 ]), .ep_addr(8'h23), .ep_datain(ep23wire));
okWireOut    wo24(.okHE(okHE), .okEH(okEHx[ 4*65 +: 65 ]), .ep_addr(8'h24), .ep_datain(ep24wire));
okWireOut    wo25(.okHE(okHE), .okEH(okEHx[ 5*65 +: 65 ]), .ep_addr(8'h25), .ep_datain(ep25wire));
okWireOut    wo26(.okHE(okHE), .okEH(okEHx[ 6*65 +: 65 ]), .ep_addr(8'h26), .ep_datain(ep26wire));
okWireOut    wo27(.okHE(okHE), .okEH(okEHx[ 7*65 +: 65 ]), .ep_addr(8'h27), .ep_datain(ep27wire));
//okWireOut    wo26(.okHE(okHE), .okEH(okEHx[ 6*65 +: 65 ]), .ep_addr(8'h26), .ep_datain(32'h12345678));

//okBTPipeOut  poA1(.okHE(okHE), .okEH(okEHx[ 7*65 +: 65 ]),
//		  .ep_addr(8'ha1), .ep_datain(pipeout), .ep_read(fifo_rd_en), .ep_blockstrobe(),  
//		  .ep_ready(~fifo_empty));

always @ (posedge sc_done)	begin
//	ep21wire = {sc_out[107:76]};
//	ep22wire = {sc_out[75:54]};
	ep21wire = {sc_out[49:18]};
	ep22wire = {14'b0, sc_out[17:0]};
end
always @ (posedge sys_clk) begin
	ep27wire = {12'b0,count[19:0]};
end
//always @ (posedge sc_done)	begin
//	ep24wire = {sc_out[35:20], sc_out[17:14], sc_out[11:0]};
//	ep25wire = {sc_out[71:56], sc_out[53:50], sc_out[47:36]};
//	ep21wire = {24'b0, sc_out[55:54], sc_out[49:48], sc_out[19:18], sc_out[13:12]};
//end

//always @ (posedge sc_done_BB)	begin
//   ep22wire = sc_out_BB[31:0];
//	ep23wire = sc_out_BB[63:32];
//end

//always @ (posedge sc_done_TH)	begin
//   ep20wire = {20'b0, sc_out_TH[11:0]};
//end

//always @ (negedge clk_o)	begin
//   ep25wire = {20'b0, corr_data_out[11:0]};
//end	

//always @ (posedge sc_done_comp)  begin
//   ep26wire = {12'b0, sc_out_comp[19:0]};
//end

//Scan Chain
ScanChain ScanChain_1(
    .clki(sys_clk),
	 .SC_clk_enb(ep00wire[31]),
	 .SC_data_enb(ep00wire[30]),
	 //.SC_reset_enb(ep00wire[28]),
	 .data_in({ep04wire[17:0],ep03wire[31:0],ep02wire[17:0],ep01wire[31:0]}),				// s_in from Matlab to okHost
	 .data_out(s_chipout),		   // s_out from chip to okHost
	 .SC_data(sc_data),			// s_in from okHost to chip			
	 //.SC_load(sc_load),
	 .SC_clk_chip(sc_clk),
	 .SC_out(sc_out),			// s_out from okHost to Matlab
	 //.SC_reset(sc_reset),
	 .SC_done(sc_done)
	 );
	 
	 
/*Trig Trig_1(
	.clki(sys_clk),
	.wake_up(wake_up),
	.count(count),
	.WU_valid(WU_valid)
);

Sync Sync_1(
	.clki(sys_clk),
	.comp_out(comp_out),
	.WU_valid(WU_valid),
	.T_0(T_0),
	.T_1(T_1),
	.data_clk_enb(data_clk_enb)
);*/

Trig Trig_1(
	.clki(sys_clk),
	.wake_up(wake_up),
	.WU_serviced(WU_serviced),
	.count(count),
	.WU_valid(WU_valid)
);

Sync Sync_1(
	.clki(sys_clk),
	.comp_out(comp_out),
	.WU_valid(WU_valid),
	.T_0(T_0),
	.T_1(T_1),
	.WU_serviced(WU_serviced),
	.data_clk_enb(data_clk_enb)
);

//Scan Chain
//ScanChain ScanChain_1(
//    .clki(sys_clk),
//	 .SC_clk_enb(ep00wire[31]),
//	 .SC_data_enb(ep00wire[30]),
	 //.SC_reset_enb(ep00wire[28]),
//	 .data_in({ep05wire[31:20],ep01wire[7:6],ep05wire[19:16],ep01wire[5:4],ep05wire[15:0],ep04wire[31:20],ep01wire[3:2],ep04wire[19:16],ep01wire[1:0],ep04wire[15:0]}),				// s_in from Matlab to okHost
//	 .data_out(s_chipout),		   // s_out from chip to okHost
//	 .SC_data(sc_data),			// s_in from okHost to chip			
	 //.SC_load(sc_load),
//	 .SC_clk_chip(sc_clk),
//	 .SC_out(sc_out),			// s_out from okHost to Matlab
	 //.SC_reset(sc_reset),
//	 .SC_done(sc_done)
//	 );

//WU_test WU_test_1(
//    .clki(sys_clk),
//    .Corr_data_clk_enb(ep00wire[26]),
//	 .Corr_data_enb(ep00wire[25]),
//    .data_out(corr_chipout),
//    .Corr_data_IN(corr_data_IN),
//    .Corr_data_out(corr_data_out)
//    );
	 
// LED on XEM board	 
assign led[7] = ep00wire[31];
assign led[6] = ep00wire[30];
assign led[5] = ep00wire[29];
assign led[4] = ep00wire[28];
assign led[3] = ep00wire[27];
assign led[2] = data_clk_enb; //ep27wire[0];
assign led[1] = WU_valid;
assign led[0] = sc_done;

endmodule

