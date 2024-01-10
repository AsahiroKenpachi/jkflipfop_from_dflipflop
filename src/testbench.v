`include"jkfromd.v"
module tb();
  wire Q;
  reg clk,din,rst;
  top_module t1(clk,din,rst,Q);
  initial begin
    clk=0;
    forever begin
      clk=~clk;
      #1;
    end
  end
  initial begin
    rst=1;
    #2;
    rst=0;
    
  end
