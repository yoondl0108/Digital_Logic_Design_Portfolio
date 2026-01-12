`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: 8_to_1_mux.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make 8 x 1 mux
//////////////////////////////////////////////////////////////////////////////////

module mux(s, d, y);

  input [2:0] s;
  input [7:0] d;
  output reg y;

  always @ (s) begin
      case (s)
          3'b000:
              y = d[7];
          3'b001:
              y = d[6];
          3'b010:
              y = d[5];
          3'b011:
              y = d[4];
          3'b100:
              y = d[3];
          3'b101:
              y = d[2];
          3'b110:
              y = d[1];
          3'b111:
              y = d[0];
          default:
              y = 4’b0000;
      endcase
  end
endmodule
