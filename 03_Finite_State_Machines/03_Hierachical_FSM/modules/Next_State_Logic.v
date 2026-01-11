`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: Next_State_Logic.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make sequential circuit
//////////////////////////////////////////////////////////////////////////////////

module next_state_logic(
  input [2:0] current_state,
  input x,
  output reg [2:0] next_state
);

  parameter
  S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011,
  S4 = 3'b100, S5 = 3'b101, S6 = 3'b110, S7 = 3'b111;

  always @ (current_state or x) begin
    if(current_state == S0) begin
      case(x)
        1'b0: next_state <= S1;
        1'b1: next_state <= S0;
        default: next_state <= current_state;
      endcase
    end
    else if(current_state == S1) begin
      case(x)
        1'b0: next_state <= S1;
        1'b1: next_state <= S2;
        default: next_state <= current_state;
      endcase
    end
    else if(current_state == S2) begin
      case(x)
        1'b0: next_state <= S1;
        1'b1: next_state <= S3;
        default: next_state <= current_state;
      endcase
    end
    else if(current_state == S3) begin
      case(x)
        1'b0: next_state <= S4;
        1'b1: next_state <= S0;
        default: next_state <= current_state;
      endcase
    end
    else if(current_state == S4) begin
      case(x)
        1'b0: next_state <= S1;
        1'b1: next_state <= S5;
        default: next_state <= current_state;
      endcase
    end
    else if(current_state == S5) begin
      case(x)
        1'b0: next_state <= S1;
        1'b1: next_state <= S6;
        default: next_state <= current_state;
      endcase
    end
    else if(current_state == S6) begin
      case(x)
        1'b0: next_state <= S1;
        1'b1: next_state <= S7;
        default: next_state <= current_state;
      endcase
    end
    else if(current_state == S7) begin
      case(x)
        1'b0: next_state <= S7;
        1'b1: next_state <= S7;
        default: next_state <= current_state;
      endcase
    end
    else
      next_state <= S0;
  end
endmodule
