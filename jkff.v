module jkff(clk,j,k,rst,q,qb);
input clk,j,k,rst; 
output reg q;
output qb;

parameter memory = 2'b00;
parameter set = 2'b10;
parameter reset= 2'b01;
parameter toggle = 2'b11;

always @(posedge clk)
begin 
if(rst)
q<=1'b0;
else
begin
case ({j,k})
memory : q<=q;
set: q<= 1'b1;
reset :q<=1'b0;
toggle : q=~q;
default : q<=1'b0;
endcase

end
end

assign qb=~q;
endmodule
