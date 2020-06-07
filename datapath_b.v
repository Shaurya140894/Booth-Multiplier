module BOOTH (ldA,ldQ,ldM,clrA,clrQ,clrFF,sftA,sftQ,addsub,decr,ldcnt,data_in,clk,qm1,eqz);
input ldA,ldQ,ldM,clrA,clrQ,clrFF,sftA,sftQ,addsub,decr,ldcnt,clk;
input [15:0] data_in;
output qm1,eqz;
wire [15:0] A,M,Q,Z;
wire [4:0] count;
assign eqz = ~|count;

shiftreg AR (A,Z,A[15],clk,ldA,clrA,sftA);
shiftreg QR (Q,data_in,A[0],clk,ldQ,clrQ,sftQ);
dff QM1 (qm1,Q[0],clk,clr);
PIPO MR (M,data_in,clk,ldM);
ALU AS (Z,A,M,addsub);
counter CN (count,decr,ldcnt,clk);

endmodule
