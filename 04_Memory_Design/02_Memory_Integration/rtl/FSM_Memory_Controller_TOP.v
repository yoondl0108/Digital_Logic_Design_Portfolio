`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: Digital_Lock_FSM.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make a fsm that has lock/unlock fucntion
//////////////////////////////////////////////////////////////////////////////////

module fsm_top(
  input clk,
  input we,
  input rst,
  input [7:0] d_in, 
  output [5:0] final_out
);

  parameter
  ADRS_WIDTH = 2, WORD_DEPTH = 4, WORD_WIDTH = 8;

  wire [1:0] current_state;
  wire [1:0] next_state;
  wire [WORD_WIDTH - 1 : 0] mem;

  memory_logic memory0(
    .clk            (clk            ),
    .we             (we             ),
    .d_in           (d_in           ),
    .adrs           (current_state  ),
    .mem            (mem            )
  );

  next_state_logic next0(
    .clk            (clk            ),
    .rst            (rst            ),
    .next_state     (next_state     )
  );

state_register_logic state0(
    .clk            (clk            ),
    .next_state     (next_state     )
    .rst            (rst            ),
    .current_state  (current_state  ),
  ); 
  
endmodule
