`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: Next_State_Logic.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make sequential circuit
//////////////////////////////////////////////////////////////////////////////////

module memory_logic(clk, we, adrs, d_in, mem);

  parameter
  ADDR_WIDTH = 2, WORD_DEPTH = 4, WORD_WIDTH = 8;
  
  input        clk;
  input        we;
  input        [ADDR_WIDTH - 1 : 0] adrs;
  input        [ADDR_WIDTH - 1 : 0] d_in;
  output reg   [WORD_WIDTH - 1 : 0] mem;

  reg [WORD_WIDTH - 1 : 0] memory [0 : WORD_DEPTH - 1];

  always @ (posedge clk) begin
    if(!we)
      memorry[adrs] <= d_in;
  end

  always @ (posedge clk) begin
    #1 mem <= memory[adrs];
  end
endmodule
