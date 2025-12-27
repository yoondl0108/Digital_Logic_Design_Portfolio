`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024
// Module Name:   tb_example.v
// Target Module: example.v
//
// Description:   
//    Testbench for verifying the basic gates.
//
// Test Strategy:
//   Apply random input to verify basic gates.
//////////////////////////////////////////////////////////////////////////////////

module tb_example();
  reg a, b, c;
  wire e, f;

  example example0(a, b, c, e, f);

  initial begin
    a = 1'b0; b = 1'b0; c = 1'b0;
    #10 a = 1'b0; b = 1'b0; c = 1'b1;
    #10 a = 1'b0; b = 1'b1; c = 1'b0;
    #10 a = 1'b0; b = 1'b1; c = 1'b1;
    #10 a = 1'b1; b = 1'b0; c = 1'b0;
    #10 a = 1'b1; b = 1'b0; c = 1'b1;
    #10 a = 1'b1; b = 1'b1; c = 1'b0;
    #10 a = 1'b1; b = 1'b1; c = 1'b1;
    #10 $finish;
  end
endmodule   
