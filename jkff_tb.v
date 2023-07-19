module jkff_tb();
reg clk,rst,j,k;
wire q,qb;
jkff DUT(clk,rst,j,k,q,qb);

initial
begin
clk=0;

forever #5 clk=~clk;
end

task rst_dut();
begin
@(negedge clk)
rst=1'b1;
@(negedge clk)
rst=1'b0;
end
endtask

task inputs(input x,y);
begin 
@(negedge clk);
j=x;
k=y;
end
endtask

initial
begin
rst_dut;
inputs(1'b0,1'b0);
inputs(1'b0,1'b1);
inputs(1'b1,1'b0);
inputs(1'b1,1'b0);
inputs(1'b1,1'b1);
rst_dut;
inputs(1'b0,1'b1);
inputs(1'b1,1'b0);
inputs(1'b1,1'b0);
#5;
$finish;
end 
endmodule

