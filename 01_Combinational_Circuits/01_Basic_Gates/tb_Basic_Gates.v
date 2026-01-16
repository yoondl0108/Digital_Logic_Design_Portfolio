`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024
// Module Name:   tb_Basic_Gates.v
// Target Module: Basic_Gates.v
//
// Description:   
//    Testbench for verifying the functionality of the Basic_Gates module.
//
// Test Strategy:
//    Verification using truth table input patterns.
//////////////////////////////////////////////////////////////////////////////////

module tb_Basic_Gates();
  reg a, b, c;
  wire e, f;

  Basic_Gates Basic_Gates0(a, b, c, e, f);

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
