// this code does not have a reset
// This is solved for HDLBits-ece241 2013 q7
module top_module (
    input clk,
    input j,
    input k,
    output wire Q); 
	wire din,q,qbar;
    dflipflop(clk,din,q,qbar);
    assign din=(j&qbar)|((~k)&q);
    assign Q=q;
endmodule
module dflipflop(
    input clk,d,
    output reg q,
    output wire qbar
);
    always @(posedge clk) begin
        q<=d;
    end
    assign qbar=~q;
endmodule
