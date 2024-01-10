// this is with reset
module top_module (
    input clk,
    input j,
    input k,
    input rst,
    output wire Q); 
	wire din,q,qbar;
  dflipflop(clk,din,rst,q,qbar);
    assign din=(j&qbar)|((~k)&q);
    assign Q=q;
endmodule
module dflipflop(
    input clk,d,rst,
    output reg q,
    output wire qbar
);
  always @(posedge clk,posedge rst) begin
    if (rst==1) begin
      q<=0;
    end
    else begin
        q<=d;
    end
    end
    assign qbar=~q;
endmodule
