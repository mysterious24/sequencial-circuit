module up_counter4_tb();
reg [3:0]data_in;
reg load,clk,reset;
wire [3:0]count;
parameter cycle=10;

up_counter4 DUT(data_in,load,clk,reset,count);

initial
begin
clk=0;

forever #5 clk=~clk;
end

task reset_t;
begin
@(negedge clk);
reset = 1'b0;
@(negedge clk);
reset = 1'b1;
end 
endtask

task load_t(input l, input [3:0]d);
begin 
@(negedge clk);
load=l;
data_in = d;
end
endtask

initial
begin
reset_t;
#100;
load_t(1'b1,4'd13);
load_t(1'b0,4'd13);
#200;
$finish;
end
endmodule





