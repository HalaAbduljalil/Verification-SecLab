module Integerb;
logic [31:0] A;
logic [31:0] B;
logic [31:0] X;

initial 
begin 

A=16;
B=-8;
$display("Start point 3_b in lab 3\n----------------use A and B ase operator for arithmatic operator ---------------");
$display("A = %d , B = %d", $signed(A) , $signed(B));
X = A + B;
$display("X = A + B = %d", $signed(X));			
X = A - B;
$display("X = A - B = %d", $signed(X));
X = B - A;
$display("X = B - A is %d", $signed(X));
$display("--------------------------End -------------------------");
			

end 

endmodule;

