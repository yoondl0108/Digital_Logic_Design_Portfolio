`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024
// Module Name:   tb_3_to_8_decoder.v
// Target Module: 3_to_8_decoder.v
//
// Description:   
//    Testbench for verifying the 3 x 8 decoder.
//
// Test Strategy:
//   Apply random input to verify the 3 x 8 decoder.
//////////////////////////////////////////////////////////////////////////////////

module tb_decoder();

  reg [2:0] s;
  wire [7:0] d;

  decoder decoder0(s, d);

  initial begin
      s = 3'b000; #15
      s = 3'b001; #15
      s = 3'b010; #15
      s = 3'b011; #15
      s = 3'b100; #15
      s = 3'b101; #15 
      s = 3'b110; #15 
      s = 3'b111; #15
      $finish;
  end    
endmodule
