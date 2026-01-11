`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024
// Module Name:   tb_Digital_Lock_FSM.v
// Target Module: Digital_Lock_FSM.v
//
// Description:   
//    Testbench for verifying a FSM that has lock/unlock function
//
// Test Strategy:
//    Apply random input to verify the FSM.
//////////////////////////////////////////////////////////////////////////////////

module tb_fsm();
  
  reg clk, reset;
  reg x;
  wire unlocked, closer;

  fsm fsm0(clk, reset, x, unlocked, closer);

  always #5 clk = ~clk;

  initial begin
    clk = 1'b0; reset = 1'b1; #1
    reset = 1'b0; #1 reset = 1'b1;
    x = 1'b1; #8
    x = 1'b0; #10
    x = 1'b0; #10
    x = 1'b1; #10
    x = 1'b0; #10
    x = 1'b1; #10
    x = 1'b1; #10
    x = 1'b0; #10
    x = 1'b1; #10
    x = 1'b1; #10
    x = 1'b1; #10
    x = 1'b0; #10
    $finish;
  end 
endmodule
