module add_sub_nbit #(parameter n = 8)(
input [n-1:0] x,y,
input add_n,cin,
output [n-1:0] s,
output c_out
);
wire [n-1:0] xored_y;

generate
genvar i;
for(i=0;i<n;i=i+1)
begin
assign xored_y[i]=y[i]^add_n;
end
endgenerate
n_bit_rca #(.n(n)) add_sub(
x,xored_y,add_n|cin,s,c_out
);
endmodule
