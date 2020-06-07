module counter (data_out,decr,ldcnt,clk);
input decr,ldcnt,clk;
output reg [4:0] data_out;
always @ (posedge clk)
begin
if (ldcnt) data_out <= 5'b10000;
else if (decr) data_out <= data_out - 1;
end
endmodule
