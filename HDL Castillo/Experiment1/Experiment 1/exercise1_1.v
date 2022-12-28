//Castillo, Joaquin Iverson M.
//2020759

module exercise1_1(W,X,Y,Z); 
	output	[0:3] W; 
	input		X, Y;  
	input		Z; 
	wire 		X1, Y1, Z1; 
	
	not 	G1(X1, X), G2(Y1, Y), G3(Z1, Z); 
	nand 	G4(W[0], X1, Y1, Z1), G5(W[1], X1, Y, Z1), G6(W[2], X, Y1, Z1), G7(W[3], X, Y, Z1); 
endmodule

module testbench1();
	reg X,Y,Z;
	wire [0:3] W;
	exercise1_1 tb(W,X,Y,Z);
	initial begin
		$monitor("X=%b Y=%b Z=%b W=%b", X,Y,Z,W);
		#4 X=1'b0; Y=1'b0; Z=1'b0;
		#4 X=1'b0; Y=1'b0; Z=1'b1;
		#4 X=1'b0; Y=1'b1; Z=1'b0;
		#4 X=1'b0; Y=1'b1; Z=1'b1;
		#4 X=1'b1; Y=1'b0; Z=1'b0;
		#4 X=1'b1; Y=1'b0; Z=1'b1;
		#4 X=1'b1; Y=1'b1; Z=1'b0;
		#4 X=1'b1; Y=1'b1; Z=1'b1;
		#2 $finish;
	end
endmodule


