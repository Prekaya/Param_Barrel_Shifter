module top_level
	#(N = 7)
	(
		input logic [15:0] sw,
		output logic [N:0] led
    );
   
   //signals
   logic [2:0] amt;
   logic [N:0] x;
   
   assign x = sw[N:0];
   assign amt = sw[15:13];
   param_barrel_shifter #(.N(N)) barrel0 (.amt(amt),.x(x),.y(led));
endmodule
