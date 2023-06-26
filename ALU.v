
module ALU#(parameter n=8)(
input [n-1:0]A,B,
input [2:0]opcode,
input cin,
output reg [n-1:0]result ,
output reg c_flag,
output cout
 );

wire [n-1:0]arithmatic;
add_sub_nbit #(8)add_sub(A,B,opcode[0],cin,arithmatic,cout);
always@(*)begin
case (opcode)
3'b000: result=arithmatic;
3'b001: result=arithmatic;
3'b010: result=A&B;
3'b011: result=A|B;
3'b100:	result=A^B;
3'b101: c_flag=(A>B?1'b1:1'b0);
3'b110: result=A<<1;
3'b111: result=B<<1;
endcase
end
endmodule