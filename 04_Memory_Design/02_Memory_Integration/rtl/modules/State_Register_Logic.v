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

module state_register_logic(
  input              clk,
  input [1:0]        next_state,
  input              rst,
  output reg [1:0]   current_state
);

  always @ (posedge clk or negedge rst) begin
    if(!rst)
      current_state <= 2'b00;
    else
      current_state <= next_state;
  end
endmodule
