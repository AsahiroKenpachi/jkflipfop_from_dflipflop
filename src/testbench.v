`include"jkfromd.v"
module tb();
  wire Q;
  reg clk,j,k,rst;
  top_module t1(clk,j,k,rst,Q);
  integer count1,count2;
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
    j=0;
    k=0
    for(count1=0;count1<2;count1=count1+1)
      begin
        for(count2=0;count2<2;count2=count2+1) begin
          #2;
          k=k+1;
        end
        j=j+1;
      end
    $finish();
  end
  initial begin
    $dumpfile("signal.vcd");
    $dumpvars(0,tb);
  end
endmodule
