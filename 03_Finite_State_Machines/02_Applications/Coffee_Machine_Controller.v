`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: Coffe_Machine_Controller.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make a Mealy? Coffe Machine
//////////////////////////////////////////////////////////////////////////////////

module coffee_machine(clk, reset, fifty, hundred, coff_out_req, coin_ret_req, bypass, coff_out, coin_ret);

  parameter
  EMPTY = 2'b00, FIFTY = 2'b01, HUNDRED = 2'b10, HUNDRED_FIFTY = 2'b11;

  input clk, reset;
  input fifty, hundred, coff_out_req, coin_ret_req;
  output reg bypass, coff_out, coin_ret;
  reg [1:0] current_state, next_state;

  always @ (posedge clk or negedge reset) begin
    if(!reset)
      current_state <= 2'b00;
    else
      current_state <= next_state;
  end

  always @ (current_state or fifty or hundred or coff_out_req or coin_ret_req) begin //next_state
    if(current_state == EMPTY) begin
      case({fifty, hundred, coff_out_req, coin_ret_req})
        4'b0001: next_state = EMPTY;
        4'b0010: next_state = EMPTY;
        4'b0100: next_state = HUNDRED;
        4'b1000: next_state = FIFTY;
        default: next_state = current_state;
      endcase
    end
    else if(current_state == FIFTY) begin
      case({fifty, hundred, coff_out_req, coin_ret_req})
        4'b0001: next_state = EMPTY;
        4'b0010: next_state = FIFTY;
        4'b0100: next_state = HUNDRED_FIFTY;
        4'b1000: next_state = HUNDRED;
        default: next_state = current_state;
      endcase
    end
    else if(current_state == HUNDRED) begin
      case({fifty, hundred, coff_out_req, coin_ret_req})
        4'b0001: next_state = EMPTY;
        4'b0010: next_state = EMPTY;
        4'b0100: next_state = HUNDRED;
        4'b1000: next_state = HUNDRED;
        default: next_state = current_state;
      endcase
    end
    else if(current_state == HUNDRED_FIFTY) begin
      case({fifty, hundred, coff_out_req, coin_ret_req})
        4'b0001: next_state = EMPTY;
        4'b0010: next_state = FIFTY;
        4'b0100: next_state = HUNDRED_FIFTY;
        4'b1000: next_state = HUNDRED_FIFTY;
        default: next_state = current_state;
      endcase
    end
    else
      next_state = 2'b00;
  end

  always @ (current_state or fifty or hundred or coff_out_req or coin_ret_req) begin //output
    if(current_state == EMPTY) begin
      case({fifty, hundred, coff_out_req, coin_ret_req})
        4'b0001: {bypass, coff_out, coin_ret} = 3b'000;
        4'b0010: {bypass, coff_out, coin_ret} = 3b'000;
        4'b0100: {bypass, coff_out, coin_ret} = 3b'000;
        4'b1000: {bypass, coff_out, coin_ret} = 3b'000;
        default: {bypass, coff_out, coin_ret} = 3b'000;
      endcase
    end
    else if(current_state == FIFTY) begin
      case({fifty, hundred, coff_out_req, coin_ret_req})
        4'b0001: {bypass, coff_out, coin_ret} = 3b'001;
        4'b0010: {bypass, coff_out, coin_ret} = 3b'000;
        4'b0100: {bypass, coff_out, coin_ret} = 3b'000;
        4'b1000: {bypass, coff_out, coin_ret} = 3b'000;
        default: {bypass, coff_out, coin_ret} = 3b'000;
      endcase
    end
    else if(current_state == HUNDRED) begin
      case({fifty, hundred, coff_out_req, coin_ret_req})
        4'b0001: {bypass, coff_out, coin_ret} = 3b'001;
        4'b0010: {bypass, coff_out, coin_ret} = 3b'010;
        4'b0100: {bypass, coff_out, coin_ret} = 3b'100;
        4'b1000: {bypass, coff_out, coin_ret} = 3b'100;
        default: {bypass, coff_out, coin_ret} = 3b'000;
      endcase
    end
    else if(current_state == HUNDRED_FIFTY) begin
      case({fifty, hundred, coff_out_req, coin_ret_req})
        4'b0001: {bypass, coff_out, coin_ret} = 3b'001;
        4'b0010: {bypass, coff_out, coin_ret} = 3b'020;
        4'b0100: {bypass, coff_out, coin_ret} = 3b'100;
        4'b1000: {bypass, coff_out, coin_ret} = 3b'100;
        default: {bypass, coff_out, coin_ret} = 3b'000;
      endcase
    end
    else
    {bypass, coff_out, coin_ret} = 3'b000;
  end      
endmodule
