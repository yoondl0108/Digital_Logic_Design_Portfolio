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

module output_logic(
  input [2:0] current_state,
  input x,
  output reg unlocked,
  output reg closer
);

  parameter
  S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011,
  S4 = 3'b100, S5 = 3'b101, S6 = 3'b110, S7 = 3'b111;

  always @ (current_state or x) begin
    if(current_state == S7)
      unlocked <= 1'b1;
    else
      unlocked <= 1'b0;
    if((current_state == S1 || current_state == S2 || current_state == S4 
      ||current_state == S5 || current_state == S6 || current_state == S7) 
       && x == 1'b1)
      closer <= 1'b1;
    else if((current_state == S0 || current_state == S3 || current_state == S7)
            && x = 1'b0)
      closer <= 1'b1;
    else
      closer <= 1'b0;
  end
endmodule
