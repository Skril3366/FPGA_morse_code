module clk_div
#(parameter SCALE = 10000)
(input wire clk,
 output reg div_clk);

 integer counter = 1;
 

 
 always @(posedge clk) begin
	if(counter == SCALE/2) begin
		div_clk = ~div_clk;
		counter = 1;
	end
	else begin
		div_clk = div_clk;
		counter = counter + 1;
	end
 end
	
endmodule