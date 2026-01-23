module mux2x1(output reg y,input s0, input i0,i1);

assign y = (~s0 & i0) | (s0 & i1);

endmodule
