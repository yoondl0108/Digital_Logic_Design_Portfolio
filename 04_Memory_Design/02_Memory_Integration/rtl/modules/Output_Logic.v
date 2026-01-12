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
  input               clk,
  input [7:0]         mem,
  input               rst,
  output reg [5:0]    final_out
);

  always @ (posege clk or negedge rst) begin
    if(!rst)
      final_out <= 6'b000000;
    else
      if(mem[7:6] == 2'b00)
        final_out <= mem[5:0];
      else if(mem[7:6] == 2'b01)
        final_out <= final_out + mem[5:0];
      else if(mem[7:6] == 2'b10)
        final_out <= final_out - mem[5:0];
      else if(mem[7:6] == 2'b11)
        final_out <= final_out / 2;
      else
        final_out <= final_out;
  end
endmodule
