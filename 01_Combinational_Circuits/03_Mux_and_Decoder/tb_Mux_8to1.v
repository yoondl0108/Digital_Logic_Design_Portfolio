`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024
// Module Name:   tb_8_to_1_mux.v
// Target Module: 8_to_1_mux.v
//
// Description:   
//    Testbench for verifying 8 x 1 mux.
//
// Test Strategy:
//   Apply random input to verify 8 x 1 mux.
//////////////////////////////////////////////////////////////////////////////////

module tb_mux();

  reg [2:0] s;
  reg [7:0] d;
  wire y;

  mux mux0(s, d, y);

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
