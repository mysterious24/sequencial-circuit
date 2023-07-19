module siso_tb;
reg clk,rst,D;
wire Q;
siso DUT(clk,rst,D,Q);
parameter t=10;

initial
begin
clk=1'b0;
end
always #10 clk=~clk;
task rst_dut();
begin
@(negedge clk)
rst=1'b1;
@(negedge clk)
rst=1'b0;
end
endtask

task din(input d);
begin 
@(negedge clk);
D=d;
end
endtask

initial
begin
rst_dut;
din(1);
din(1);
din(1);
din(0);
din(1);
din(0);
#1000;
$finish;
end 
endmodule

