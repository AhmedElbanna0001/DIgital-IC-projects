module FA(input x1,x2,c_in,
output s,c_out
);
wire s1,c1,c2;
HA st1 (x1,x2,s1,c1);
HA st2 (
	.x1(c_in),
	.x2(s1),
	.s(s),
	.c(c2)
);
assign c_out=c1|c2;
endmodule
