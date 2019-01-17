// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jan 16 18:44:59 2019
// Host        : ASUSANTI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/srome/Desktop/ETSIT/TFG/Pablo Ituero/FPGA y
//               Vivado/ArtificialNeuron/ArtificialNeuron.srcs/sources_1/ip/ROM_weights/ROM_weights_stub.v}
// Design      : ROM_weights
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module ROM_weights(clka, rsta, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,addra[3:0],douta[7:0]" */;
  input clka;
  input rsta;
  input [3:0]addra;
  output [7:0]douta;
endmodule
