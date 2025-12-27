`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024
// Module Name:   tb_four_bit_adder_struc.v
// Target Module: four_bit_adder_struc.v
//
// Description:   
//    Testbench for verifying the four bit adder.
//
// Test Strategy:
//   Apply random input to verify the four bit adder.
//////////////////////////////////////////////////////////////////////////////////

module tb_four_bit_adder();

reg [3:0] x;
reg [3:0] y;
wire [3:0] s;
wire c;

four_bit_adder_struc four_bit_adder0(x, y, s, c);

initial begin
    x = 4'b1101; y = 4'b0100; #15
    x = 4'b0111; y = 4'b0010; #15
    x = 4'b1001; y = 4'b1111; #15
    x = 4'b1111; y = 4'b1001; #15
    $finish;
    end
endmodule
