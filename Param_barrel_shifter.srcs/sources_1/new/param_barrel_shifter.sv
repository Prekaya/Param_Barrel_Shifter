module param_barrel_shifter
	#(N=7)
	(
		input logic [2:0] amt,
		input logic [N:0] x,
		output logic [N:0] y
    );
  
	logic [7:0] s0, s1;
	assign s0 = amt[0] ? {x[0:0],x[N:1]} : x;
	assign s1 = amt[1] ? {s0[1:0],s0[N:2]} : s0;
	assign y = amt[2] ? {s1[3:0],s1[N:4]} : s1;
    
endmodule