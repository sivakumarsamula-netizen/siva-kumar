module mux4x1(output reg y,
	input i0,i1,i2,i3,
	input s0,s1);

assign y = (~s1 & ~s0 & i0) | (~s1 &  s0 & i1) | ( s1 & ~s0 & i2) | ( s1 &  s0 & i3);

endmodule
