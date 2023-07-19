module mod12_tb();
reg clk,rst;
wire d_out;
mod12counter DUT(clk,rst,d_out);

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

initial
begin
rst_dut;
#100;
$finish;
end 
endmodule

