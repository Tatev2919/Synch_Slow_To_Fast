module receiver(clkF,rst,d_in,d_out);
input clkF,rst;
input [7:0] d_in;
output reg [7:0] d_out;

always @(posedge clkF or posedge rst) 
	if(rst) d_out <= 8'b0;
	else d_out <= d_in;

endmodule
