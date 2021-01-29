module counter(clkS,rst,data);
	input clkS,rst;
	output reg [7:0] data;	

	always @(posedge clkS or posedge rst) 
		if(rst) data <= 8'b0;
		else data <= data + 8'b1;
			
endmodule
