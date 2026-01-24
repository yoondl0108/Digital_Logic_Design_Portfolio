`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:    Sungyoon Jung
// Create Date: 2024
// Module Name: squ_circuit.v
// Project:     Digital Logic Design Portfolio
//
// Description: 
//    Make sequential circuit
//////////////////////////////////////////////////////////////////////////////////

module register(clk, reset, sel, d_in, d_out);

  input clk, reset;
  input [2:0] sel;
  input [3:0] d_in;
  output reg [3:0] d_out;
  reg c;

  always @ (posedge clk or negedge reset) begin
    if(!reset) begin
      d_out <= 4'b0000;
      c <= 1'b0;
    end
    else begin
      if(sel == 3'b000)
        d_out <= d_out;
      else if(sel == 3'b001)
        d_out <= d_in;
      else if(sel == 3'b010) begin
        d_out <= (d_out >> 1);
        d_out[3] <= d_in[3];
      end
      else if(sel == 3'b010) begin
        d_out <= (d_out >> 1);
        d_out[3] <= d_in[3];
      end
      else if(sel == 3'b011) begin
        d_out <= (d_out << 1);
        d_out[0] <= d_in[0];
      end
      else if(sel == 3'b100) begin
        d_out <= (d_out >> 1);
        d_out[3] <= d_out[0];
      end
      else if(sel == 3'b101) begin
        d_out <= (d_out >> 1);
        d_out[0] <= d_out[3];
      end
      else if(sel == 3'b110)
        {c, d_out) <= {1b'0, d_in} + {1'b0, d_out};
      else if(sel == 3'b111)
        d_out <= 4'b0000;
      else
        d_out <= 4'b0000;
    end
  end
endmodule
