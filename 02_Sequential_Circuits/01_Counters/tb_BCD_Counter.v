`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024
// Module Name:   tb_BCD_Counter.v
// Target Module: BCD_Counter.v
//
// Description:   
//   Testbench for verifying the functionality of the BCD Counter.
//
// Test Strategy:
//    Verification applying the change of clock signal.
//    Use an Indirect Mapping method to indicate variables.
//////////////////////////////////////////////////////////////////////////////////

module tb_BCD_Counter();

  reg tb_clk, tb_reset;
  wire [3:0] tb_cnt_zero;
  wire [3:0] tb_cnt_one;

  BCD_Counter counter0(.cnt_zero(tb_cnt_zero), .cnt_one(tb_cnt_one), .clk(tb_clk), .reset(tb_reset));

  always #5 tb_clk = ~tb_clk;

  initial begin
      tb_clk = 1'b0; tb_reset =1'b1; #1
      tb_reset = 1'b0; #1
      tb_reset = 1'b1; #200
      $finish;
  end
endmodule
