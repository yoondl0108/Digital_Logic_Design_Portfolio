`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Sungyoon Jung
// Create Date:   2024
// Module Name:   tb_Single_Port_SRAM.v
// Target Module: Single_Port_SRAM.v
//
// Description:   
//    Testbench for verifying a FSM that has lock/unlock function
//
// Test Strategy:
//    Apply random input to verify the FSM.
//////////////////////////////////////////////////////////////////////////////////

module tb_sram();

  parameter
  ADDR_WIDTH = 4, WORD_DEPTH = 16, WORD_WIDTH = 8;

  reg clk, we;
  reg [ADDR_WIDTH - 1 : 0] addr;
  reg [WORD_WIDTH - 1 : 0] a_in;
  wire [WORD_WIDTH - 1 : 0] d_out;
  integer file_pointer;

  sram sram0(clk, we, addr, d_in, d_out);

  always #5 clk = ~clk;

  initial begin
    clk = 1'b0; we =1'b0;
    $readmemb("input_data.txt", tb_sram.sram0.mem);

    addr = 4b'00; d_in = 8b'11110000; #10
    addr = 4b'01; d_in = 8b'11001100; #10
    addr = 4b'10; d_in = 8b'00001111; #10
    addr = 4b'11; d_in = 8b'10101010; #10

    file_pointer = $fopen("output_data.txt");
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[0]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[1]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[2]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[3]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[4]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[5]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[6]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[7]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[8]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[9]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[10]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[11]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[12]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[13]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[14]);
    $fdisplay(file_pointer, "%d", tb_sram.sram0.mem[15]);
    #10 $close(file_pointer);
    $finish;
  end
endmodule
