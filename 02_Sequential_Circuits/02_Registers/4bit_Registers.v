`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: counter.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make a 4 bit counter.
//////////////////////////////////////////////////////////////////////////////////

module register(clk, reset, d_in, d_out);

  input clk, reset;
  input [3:0] d_in;
  output reg [3:0] d_out;

  always @ (posedge clk or negedge reset) begin
    if(!reset)
      d_out <= 4'b0000;
    else
      d_out <= d_in;
  end
endmodule
