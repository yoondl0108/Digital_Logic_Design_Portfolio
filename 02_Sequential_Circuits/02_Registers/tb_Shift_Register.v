`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024. 10. 30
// Module Name:   tb_Shift_Register.v
// Target Module: Shift_Register.v
//
// Description:   
//    Testbench for verifying shift register.
//
// Test Strategy:
//    Apply directed input patterns to verify logic.
//////////////////////////////////////////////////////////////////////////////////

module tb_Shift_Register();
  reg clk, reset;
  reg [3:0] d_in;
  reg [2:0] sel;
  wire [3:0] d_out;

  Shift_Register register0(clk, reset, sel, d_in, d_out);

  always #5 clk = ~clk;

  initial begin
    clk = 1'b0; reset = 1'b1; #1
    reset = 1'b0; #1 reset = 1'b1;
    sel = 3'b001; d_in = 4'b0101; #8
    sel = 3'b000; d_in = 4'b1101; #10
    sel = 3'b100; d_in = 4'b1011; #10
    sel = 3'b110; d_in = 4'b0010; #10
    sel = 3'b101; d_in = 4'b1111; #10
    sel = 3'b010; d_in = 4'b1001; #10
    sel = 3'b011; d_in = 4'b1110; #10
    sel = 3'b110; d_in = 4'b0110; #10
    sel = 3'b111; d_in = 4'b1010; #10
    $finish;
  end
endmodule
