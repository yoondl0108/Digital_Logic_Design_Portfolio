`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: Current_State_Logic.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make sequential circuit
//////////////////////////////////////////////////////////////////////////////////

module current_state_logic(
  input clk,
  input rst,
  input [2:0] next_state,
  output reg [2:0] current_state
);

  parameter
  S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011,
  S4 = 3'b100, S5 = 3'b101, S6 = 3'b110, S7 = 3'b111;

  always @ (posedge clk or negedge rst) begin
    if(!rst) begin
      current_state <= S0;
    end
    else begin
      current_state <= next_state;
    end
  end
endmodule
