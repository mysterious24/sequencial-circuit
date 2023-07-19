module sr_latch_tb();
reg s,r;
wire q,qb;
sr_latch DUT(s,r,q,qb);
initial 
begin
#0;s=0;r=0;
#10;s=0;r=1;
#10;s=1;r=0;
#10;s=0;r=0;
#10;s=1;r=0;
#10;s=0;r=0;
end 
endmodule
