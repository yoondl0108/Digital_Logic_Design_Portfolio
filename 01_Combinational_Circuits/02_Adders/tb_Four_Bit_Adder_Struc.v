`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024. 09. 11
// Module Name:   tb_Four_Bit_Adder_Struc.v
// Target Module: Four_Bit_Adder_Struc.v
//
// Description:   
//   Testbench for verifying the functionality of the Four_Bit_Adder_Struc module.
//
// Test Strategy:
//   Apply directed input patterns to verify logic.
//////////////////////////////////////////////////////////////////////////////////

module tb_Four_Bit_Adder_Struc();

  reg [3:0] x;
  reg [3:0] y;
  wire [3:0] s;
  wire c;

  Four_Bit_Adder_Struc four_bit_adder0(x, y, s, c);

  initial begin
    x = 4'b1101; y = 4'b0100; #15
    x = 4'b0111; y = 4'b0010; #15
    x = 4'b1001; y = 4'b1111; #15
    x = 4'b1111; y = 4'b1001; #15
    $finish;
  end
endmodule
