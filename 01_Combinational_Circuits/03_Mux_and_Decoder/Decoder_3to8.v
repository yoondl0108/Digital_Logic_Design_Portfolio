`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: 8_to_1_mux.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make 3 x 8 decoder
//////////////////////////////////////////////////////////////////////////////////
module decoder(s, d);

  input [2:0] s;
  output reg [7:0] d;

  always @ (s) begin
      case (s)
          3'b000:
              d = 8'b00000001;
          3'b001:
              d = 8'b00000010;
          3'b010:
              d = 8'b00000100;
          3'b011:
              d = 8'b00001000;
          3'b100:
              d = 8'b00010000;
          3'b101:
              d = 8'b00100000;
          3'b110:
              d = 8'b01000000;
          3'b111:
              d = 8'b10000000;
          default:
              d = 8'b00000000;
      endcase
  end
endmodule
