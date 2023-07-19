module sr_latch(s,r,q,qb);
input s,r;
output q,qb;

nor N1 (q,r,w2);
nor N2 (qb,s,w1);

assign w1=q;
assign w2=qb;

endmodule