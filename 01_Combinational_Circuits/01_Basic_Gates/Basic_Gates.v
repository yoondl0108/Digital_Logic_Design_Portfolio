`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: Basic_Gates.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Basic AND, OR, and NOT gate.
//////////////////////////////////////////////////////////////////////////////////

module example(a, b, c, e, f);

  input a, b, c;
  output e, f;
  wire d;

  and g1(d, a, b);
  not g2(e, c);
  or g3(f, d, e);

endmodule
