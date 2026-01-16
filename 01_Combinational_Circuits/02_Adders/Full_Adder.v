`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024. 09. 11
// Module Name: Full_Adder.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make full adder with structural code.
//////////////////////////////////////////////////////////////////////////////////

module Full_Adder(x, y, z, s, c);

  input x, y, z;
  output s, c;
  wire m, n, xy, zx, yz;

  xor g1(m, x, y);
  xor g2(s, m, z);
  and g3(xy, x, y);
  and g4(zx, z, x);
  and g5(yz, y, z);
  or  g6(n, xy, zx);
  or  g7(c, n, yz);
  
endmodule
