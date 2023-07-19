module tff_dff(clk,rst,t,q,qb);
input clk,rst,t;
inout q;
output qb;

wire d_in;

xor D1(d_in,t,q);
dff_synch D2(clk,rst,d_in,q,qb);

endmodule

