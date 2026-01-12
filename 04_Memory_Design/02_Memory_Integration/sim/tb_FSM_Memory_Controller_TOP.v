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

module tb_fsm_top();
  
  parameter
  ADRS_WIDTH = 2, WORD_DEPTH = 4, WORD_WIDTH = 8;

  reg clk, we
  reg rst;
  reg [WORD_WIDTH - 1 : 0] d_in;
  wire [5:0] final_out;
  integer fpointer;

  fsm_top fsm0(clk, we, rst, d_in, final_out);

  always #5 clk = ~clk;

  initial begin
    $readmemb("input_data.txt", tb_fsm_top.fsm0.memory0.memory);
    clk = 1'b0; we = 1'b1;
    rst = 1'b1' #1 rst = 1'b0; #1 rst = 1'b1;
    #88
    fpointer = $fopen("output_data.txt");
    $fdisplay(fpointer, "%b", tb_fsm_top.fsm0.final_out);
    #10 $fclose(fpointer);
    $finish;
  end
endmodule
