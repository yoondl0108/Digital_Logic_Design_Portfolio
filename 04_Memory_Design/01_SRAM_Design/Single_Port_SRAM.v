`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: Digital_Lock_FSM.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make a fsm that has lock/unlock fucntion
//////////////////////////////////////////////////////////////////////////////////

module sram(clk, we, addr, d_in, d_out);

  parameter
  ADDR_WIDTH = 4, WORD_DEPTH = 16, WORD_WIDTH = 8;

  input clk, we;
  input [ADDR_WIDTH - 1 : 0] addr;
  input [WORD_WIDTH - 1 : 0] a_in;
  output reg [WORD_WIDTH - 1 : 0] d_out;

  reg [WORD_WIDTH - 1 : 0] mem [0 : WORD_DEPTH - 1];

  always @ (posedge clk) begin
    if(!we)
      mem[addr] <= d_in;
  end

  always @ (posedge clk) begin
    #1 d_out <= mem[addr];
  end
endmodule
