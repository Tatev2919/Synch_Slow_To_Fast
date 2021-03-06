`include "counter.v"
`include "synch.v"
`include "receiver.v"
`include "interface.v"
module top(clkS,clkF,rst,out);
	input clkF,clkS,rst;	
	output [7:0] out;
	wire synch_signal;
	wire [7:0] data,data_f;
 
        counter c1(clkS,rst,data);
        synch s1(rst,clkS,clkF,synch_signal);
	interface i1 (rst,synch_signal,data,clkF,data_f);
	receiver r1(clkF,rst,data_f,out);

endmodule 
