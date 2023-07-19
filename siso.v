module siso(clk,rst,serial_in,serial_out);
input clk,rst,serial_in;
output reg serial_out;

reg[3:0]w;

always @(posedge clk)
begin
if(rst)
begin
w<=4'b0;
end
else
begin
w<={w[2:0],serial_in};
end
serial_out <=w[3];
end
endmodule




