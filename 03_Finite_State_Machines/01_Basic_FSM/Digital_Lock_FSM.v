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

module fsm(clk, reset, x, unlocked, closer);
  parameter
  S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011,
  S4 = 3'b100, S5 = 3'b101, S6 = 3'b110, S7 = 3'b111;

  input clk, reset;
  input x;
  output reg unlocked, closer;
  reg [2:0] current_state, next_state;

  always @ (posedge clk or negedge reset) begin
    if(!reset) begin
      current_state <= S0;
    end
    else begin
      current_state <= next_stae;
    end
  end

  always @ (current_state or x or negedge reset) begin
    if(!reset) begin
      next_state <= S0;
    end
    else begin
      if(current_state == S0) begin
        case(x)
          1'b0: next_state <= S1;
          1'b1: next_state <= S0;
          default : next_state <= current_state;
        endcase
      end
    else if
      if(current_state == S1) begin
        case(x)
          1'b0: next_state <= S1;
          1'b1: next_state <= S2;
          default : next_state <= current_state;
        endcase
      end
    else if
      if(current_state == S2) begin
        case(x)
          1'b0: next_state <= S1;
          1'b1: next_state <= S3;
          default : next_state <= current_state;
        endcase
      end
    else if
      if(current_state == S3) begin
        case(x)
          1'b0: next_state <= S4;
          1'b1: next_state <= S0;
          default : next_state <= current_state;
        endcase
      end
    else if
      if(current_state == S4) begin
        case(x)
          1'b0: next_state <= S1;
          1'b1: next_state <= S5;
          default : next_state <= current_state;
        endcase
      end
    else if
      if(current_state == S5) begin
        case(x)
          1'b0: next_state <= S1;
          1'b1: next_state <= S6;
          default : next_state <= current_state;
        endcase
      end
    else if
      if(current_state == S6) begin
        case(x)
          1'b0: next_state <= S1;
          1'b1: next_state <= S7;
          default : next_state <= current_state;
        endcase
      end
    else if
      if(current_state == S7) begin
        case(x)
          1'b0: next_state <= S7;
          1'b1: next_state <= S7;
          default : next_state <= current_state;
        endcase
      end
      else begin
        next_state <= S0;
      end
    end
  end

  always @ (current_state or x or negedge reset) begin
    if(!reset) begin
      unlocked <= 1'b0;
      closer   <= 1'b0;
    end
    else begin
      if(current_state == S7) begin
        unlocked <= 1'b1;
      end
      else begin
        unlocked <= 1'b0;
      end
      if((current_state == S1 || current_state == S2 || current_state == S4 
        ||current_state == S5 || current_state == S6 || current_state == S7)
         && x == 1'b1) begin
        closer <= 1'b1;
      end
      else begin
        closer <= 1'b0;
      end
    end
  end  
endmodule
