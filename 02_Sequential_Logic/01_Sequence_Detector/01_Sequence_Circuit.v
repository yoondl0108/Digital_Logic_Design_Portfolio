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
module squ_circuit(clk, reset, d_in, d_out);

  input clk, reset;
  input [4:0] d_in;
  output d_out;
  reg [1:0] q;
  wire mux;
  wire not_mux;

  assign mux =    (q == 2'b00) ? d_in[0] :
                  (q == 2'b01) ? d_in[1] :
                  (q == 2'b10) ? d_in[2] :
                  (q == 2'b11) ? d_in[3] : 1'b0;
                
  assign d_out = d_in[4] ^ mux;

  assign not_mux = ~mux;
                
  always @ (posedge clk or negedge reset) begin
      if(!reset)
          q <= 2'b00;
      else
          q <= {q[0], not_mux};
  end
endmodule
