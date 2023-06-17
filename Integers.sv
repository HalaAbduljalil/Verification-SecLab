module Integer;
integer A,B,X;
initial 
begin 

A=16;
B=-8;
$display("Start point 3 in lab 3\n----------------use A and B ase operator for arithmatic operator ---------------");
$display("A=%d,B = %d", A, B);
X = A + B;
$display("X=A+B=%d", X);			
X = A - B;
$display("X=A-B=%d", X);
X = B - A;
$display("X =B-A=%d", X);
$display("--------------------------End -------------------------");
			

end 

endmodule;
