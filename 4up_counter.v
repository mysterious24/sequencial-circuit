
module up_counter4(input [3:0]data_in,load,clk,reset,output reg [3:0]count);

always @(posedge clk)
begin
if(~reset)
count<=4'b0;
else if (load)
count <= data_in;
else
count <= count +1'b0;
end
endmodule
