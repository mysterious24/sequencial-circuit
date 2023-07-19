module updown_counter_tb();
reg clk,rst,mode;
wire d_out;
updown_counter DUT (clk,rst,mode,d_out);

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
@(negedge clk)
mode=0;
#100;
@(negedge clk)
mode=1;
#100;
@(negedge clk)
mode=0;
#150;
$finish;
end 
endmodule

