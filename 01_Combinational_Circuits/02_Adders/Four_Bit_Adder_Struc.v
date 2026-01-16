`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: Four_Bit_Adder_Struc.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make 4-bit adder with structural code.
//////////////////////////////////////////////////////////////////////////////////

module Four_Bit_Adder_Struc(x, y, s, c4);
  input [3:0] x;
  input [3:0] y;
  output [3:0] s;
  output c4;
  wire c1, c2, c3;

  Full_Adder fulladder1(x[0], y[0], 0, s[0], c1);
  Full_Adder fulladder2(x[1], y[1], c1, s[1], c2);
  Full_Adder fulladder3(x[2], y[2], c2, s[2], c3);
  Full_Adder fulladder4(x[3], y[3], c3, s[3], c4);

endmodule
