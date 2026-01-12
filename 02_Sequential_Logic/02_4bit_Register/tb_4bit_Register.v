`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024
// Module Name:   tb_counter.v
// Target Module: counter.v
//
// Description:   
//    Testbench for verifying a 4 bit counter.
//
// Test Strategy:
//    Apply random input to verify a 4 bit counter.
//    Use an Indirect Mapping method to indicate variables.
//////////////////////////////////////////////////////////////////////////////////

module tb_register();

  reg clk, reset;
  reg [3:0] d_in;
  wire [3:0] d_out;

  register register0(clk, reset, d_in, d_out);

  always #5 clk = ~clk;

  initial begin
    clk = 1'b0; reset = 1'b1; #1
    reset = 1'b0; #1 reset = 1'b1; #1
    d_in = 4'b0000; #7
    d_in = 4'b0001; #10
    d_in = 4'b0010; #10
    d_in = 4'b0011; #10
    d_in = 4'b0100; #10
    d_in = 4'b0101; #10
    d_in = 4'b0110; #10
    d_in = 4'b0111; #10
    d_in = 4'b1000; #10
    d_in = 4'b1001; #10
    d_in = 4'b1010; #10
    d_in = 4'b1011; #10
    d_in = 4'b1100; #10
    d_in = 4'b1101; #10
    d_in = 4'b1110; #10
    d_in = 4'b1111; #10
    $finish;
  end
endmodule
