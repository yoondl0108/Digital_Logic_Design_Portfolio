`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024. 09. 25
// Module Name:   tb_Mux_8to1.v
// Target Module: Mux_8to1.v
//
// Description:   
//    Testbench for verifying 8-to-1 Multiplexer.
//
// Test Strategy:
//    Verification using truth table input patterns.
//////////////////////////////////////////////////////////////////////////////////

module tb_Mux_8to1();

  reg [2:0] s;
  reg [7:0] d;
  wire y;

  Mux_8to1 mux0(s, d, y);

  initial begin
      d = 8'b10010101;
    
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
