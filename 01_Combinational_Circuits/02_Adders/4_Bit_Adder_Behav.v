`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: four_bit_adder_behav.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make four bit adder with behavioral code.
//////////////////////////////////////////////////////////////////////////////////

module four_bit_adder_behav(x, y, s, c);

  input [3:0] x;
  input [3:0] y;
  output [3:0] s;
  output c;

  assign {c,s} = {1'b0, x} + {1'b0, y};

endmodule
