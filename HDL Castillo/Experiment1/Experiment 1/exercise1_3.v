//Castillo, Joaquin Iverson M.
//2020759

module exercise1_3 (var1, x_4, x_1, x_2, x_3); 

    	output var1, x_4; 
     	input x_1, x_2, x_3; 
     	xor EOR1(x_4, x_1, x_2, x_3); 
	xor EOR2(var1, x_1, x_2, x_3, x_4); 
endmodule

module testbench1_3;
	reg x_1, x_2, x_3; 
    	wire  var1, x_4; 
	exercise1_3 tb1 (var1, x_4, x_1, x_2, x_3); 
    	initial begin 
   		x_1 = 1'b0; x_2 = 1'b0; x_3 = 1'b0;   
     		$monitor("x_1=%b x_2=%b x_3=%b x_4=%b var1=%b", x_1, x_2, x_3, x_4, var1);
    		#2 x_1 = 1'b0; x_2 = 1'b0; x_3 = 1'b1;
     		#1 x_1 = 1'b0; x_2 = 1'b1; x_3 = 1'b0;
   		#1 x_1 = 1'b0; x_2 = 1'b1; x_3 = 1'b1;
    		#1 x_1 = 1'b1; x_2 = 1'b0; x_3 = 1'b0;
     		#1 x_1 = 1'b1; x_2 = 1'b0; x_3 = 1'b1;
    		#1 x_1 = 1'b1; x_2 = 1'b1; x_3 = 1'b0; 
    		#1 x_1 = 1'b1; x_2 = 1'b1; x_3 = 1'b1;
     		#2 $finish;
  	end
endmodule