`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024. 09. 25
// Module Name:   tb_Decoder_3to8.v
// Target Module: Decoder_3to8.v
//
// Description:   
//    Testbench for verifying 3-to-8 Decoder.
//
// Test Strategy:
//    Verification using truth table input patterns.
//////////////////////////////////////////////////////////////////////////////////

module tb_Decoder_3to8();

  reg [2:0] s;
  wire [7:0] d;

  Decoder_3to8 decoder0(s, d);

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
