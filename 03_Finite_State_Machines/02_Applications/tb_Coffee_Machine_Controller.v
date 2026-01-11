`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024
// Module Name:   tb_Coffee_Machine_Controller.v
// Target Module: Coffee_Machine_Controller.v
//
// Description:   
//    Testbench for verifying squential circuits.
//
// Test Strategy:
//    Apply random input to verify squential circuits.
//////////////////////////////////////////////////////////////////////////////////

module tb_coffee_machine();

  reg clk, reset;
  reg fifty, hundred, coff_out_req, coin_ret_req;
  wire bypass, coff_out, coin_ret;
  
  coffee_machine machine0(clk, reset, fifty, hundred, coff_out_req, coin_ret_req, bypass, coff_out, coin_ret);

  always #5 clk = ~clk;

  initial begin
    clk = 1'b0; reset = 1'b1; #1
    reset = 1'b0; #1 reset = 1'b1;
    {fifty, hundred, coff_out_req, coin_ret_req} = 4'b0000; #8;
    {fifty, hundred, coff_out_req, coin_ret_req} = 4'b0001; #10;
    {fifty, hundred, coff_out_req, coin_ret_req} = 4'b1000; #10;
    {fifty, hundred, coff_out_req, coin_ret_req} = 4'b0001; #10;
    {fifty, hundred, coff_out_req, coin_ret_req} = 4'b0010; #10;
    {fifty, hundred, coff_out_req, coin_ret_req} = 4'b0100; #10;
    {fifty, hundred, coff_out_req, coin_ret_req} = 4'b0010; #10;
    $finish
  end
endmodule
