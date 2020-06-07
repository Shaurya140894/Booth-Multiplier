module ALU (out,in1,in2,sel);
input sel;
input [15:0] in1,in2;
output reg [15:0] out;
always @ (*)
if (sel == 0) out = in1 - in2;
else out = in1 + in2;
endmodule
