`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: TOP_Module.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make sequential circuit
//////////////////////////////////////////////////////////////////////////////////

module fsm(
  input clk,
  input rst,
  input x
  output unlocked,
  output closer
);

  wire [2:0] current_state;
  wire [2:0] next_state;

  current_state_logic current_state_logic0(
    .clk            (clk            ),
    .rst            (rst            ),
    .next_state     (next_state     ),
    .current_state  (current_state  )
  );
  
  next_state_logic next_state_logic0(
    .current_state  (current_state  ),
    .x              (x              ),
    .next_state     (next_state     )
  );
  
  output_state_logic output_logic0(
    .current_state  (current_state  ),
    .x              (x              ),
    .unlocked       (unlocked       ),
    .closer         (closer         )
  );

endmodule
