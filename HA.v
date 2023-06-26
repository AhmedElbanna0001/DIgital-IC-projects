module HA(input x1,x2,
output s,c
);

assign s=x1^x2;
assign c=x1&x2;

endmodule
