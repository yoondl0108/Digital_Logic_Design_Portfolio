`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024. 09. 11
// Module Name: Four_Bit_Adder_Behav.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make 4-bit adder with behavioral code.
//////////////////////////////////////////////////////////////////////////////////

module Four_Bit_Adder_Behav(x, y, s, c);

  input [3:0] x;
  input [3:0] y;
  output [3:0] s;
  output c;

  assign {c,s} = {1'b0, x} + {1'b0, y};

endmodule
