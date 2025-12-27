`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: four_bit_adder_struc.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make four bit adder with structural code.
//////////////////////////////////////////////////////////////////////////////////

module four_bit_adder_struc(x, y, s, c4);
  input [3:0] x;
  input [3:0] y;
  output [3:0] s;
  output c4;
  wire c1, c2, c3;

  full_adder fulladder1(x[0], y[0], 0, s[0], c1);
  full_adder fulladder2(x[1], y[1], c1, s[1], c2);
  full_adder fulladder3(x[2], y[2], c2, s[2], c3);
  full_adder fulladder4(x[3], y[3], c3, s[3], c4);

endmodule
