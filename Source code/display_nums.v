module display_nums
(input clk,
 output reg [7:0] display,
 output reg [7:0] segment);

	wire [7:0] numbers [10:0];


	
	assign numbers[0] = ~8'b00111111; // display 0
	assign numbers[1] = ~8'b00000110; // display 1
	assign numbers[2] = ~8'b01011011; // display 2
	assign numbers[3] = ~8'b01001111; // display 3
	assign numbers[4] = ~8'b01100110; // display 4
	assign numbers[5] = ~8'b01101101; // display 5
	assign numbers[6] = ~8'b01111101; // display 6
	assign numbers[7] = ~8'b00100111; // display 7
	assign numbers[8] = ~8'b01111111; // display 8
	assign numbers[9] = ~8'b01101111; // display 9
	assign numbers[10] = ~8'b00000000; // display blank


	integer counter = 0;
	always @(posedge clk) begin
		display = ~(8'b1 << counter);
		segment = numbers[counter];
		if(counter == 7) counter = 0;
		else counter = counter + 1;

	end


endmodule
