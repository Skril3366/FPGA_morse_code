module top(
	input clk,
	output [7:0] display,
	output [7:0] segment
);
	
wire div_clk;
	
clk_div CLKdiv(
	.clk(clk),
	.div_clk(div_clk)
);
	
display_nums nums(
	.clk(div_clk),
	.display(display),
	.segment(segment)
);
	
	
endmodule