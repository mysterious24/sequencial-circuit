module mod12counter(clk,rst,d_out);
input clk,rst;
output reg [3:0]d_out;
always @(posedge clk )
begin

if(rst)
d_out <= 4'b0000;
else if (d_out == 4'b1011)
d_out <= 4'b0000;
else 
d_out <= d_out +1'b1;
end
endmodule


