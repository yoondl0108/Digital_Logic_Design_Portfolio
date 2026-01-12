`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024
// Module Name:   tb_squ_circuit.v
// Target Module: squ_circuit.v
//
// Description:   
//    Testbench for verifying squential circuits.
//
// Test Strategy:
//    Apply random input to verify squential circuits.
//////////////////////////////////////////////////////////////////////////////////

module tb_squ_circuit();

  reg clk, reset;
  reg [4:0] d_in;
  wire d_out;

  squ_circuit circuit0(clk, reset, d_in, d_out);

  always #5 clk = ~clk;

  initial begin
      clk = 1'b0; reset = 1'b1; #1
      reset = 1'b0; #1
      reset = 1'b1; d_in = 5'b10001; #8
      d_in = 5'b01010; #10
      d_in = 5'b11100; #10
      d_in = 5'b00110; #10
      d_in = 5'b10101; #10
      d_in = 5'b01110; #10
      d_in = 5'b00000; #10
      d_in = 5'b11011; #10
      $finish;    
  end
endmodule
