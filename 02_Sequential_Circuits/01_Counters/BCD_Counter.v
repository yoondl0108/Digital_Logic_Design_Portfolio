`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024. 10. 23
// Module Name: BCD_Counter.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Binary Coded Decimcal Counter implementation.
//////////////////////////////////////////////////////////////////////////////////

module BCD_Counter(clk, reset, cnt_zero, cnt_one);

  input clk, reset;
  output reg [3:0] cnt_zero;
  output reg [3:0] cnt_one;

  always @ (posedge clk or negedge reset) begin
      if(!reset) begin
          cnt_zero <= 4'b0000;
          cnt_one <= 4'b0000;
      end
      else begin
          if (cnt_zero == 4'b1001) begin
              cnt_zero <= 4'b0000;
              cnt_one <= cnt_one + 4'b0001;
          end
          else if (cnt_one == 4'b0001 && cnt_zero == 4'b0101) begin
              cnt_zero <= 4'b0000;
              cnt_one <= 4'b0000;
          end
      else
          cnt_zero <= cnt_zero + 4'b0001;            
      end
  end
endmodule
