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

module next_state_logic(
  input             clk,
  input             rst,
  output reg [1:0]  next_state
);

  always @ (posedge clk or negedge rst) begin
    if(!rst)
      next_state <= 2'b00;
    else
      next_state <= next_state + 2'b01;
  end
endmodule
