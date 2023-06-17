`timescale 1ns/1ns;
module truncation;
integer Int='b0;
logic [7:0] Byte;
logic [31:0] Word;
logic [63:0] Long;
logic [127:0] DLong;
initial
begin
Int = 'b0;
Word = 'b0;
Long = 'b0;
DLong = 'b0;
$display("-------- Initialize --------------");
$display("-------- point 4 in lab 3 --------");
$display(" Int = %d\n Word = %b\n Long = %b\n DLong = %b\n", Int, Word, Long, DLong);
$display("-------- End initialize --------");

//point 4 (A)
$display("-------- point 4 (A) in lab 3 --------");
Int = 6'd1;
Word = 6'd1;
Long = 6'd1;
DLong = 6'd1;
$display(" Int = %d\n Word = %b\n Long = %b\n DLong = %b\n", Int, Word, Long, DLong);
Int = -6'd1;
Word = -6'd1;
Long = -6'd1;
DLong = -6'd1;
$display(" Int = %d\n Word = %b\n Long = %b\n DLong = %b\n", Int, Word, Long, DLong);

$display("-------- End point 4 (A) in lab 3  --------");

//point 4 (B)
$display("-------- point 4 (B) in lab 3 --------");
Int = 36'd1;
Word = 36'd1;
Long = 36'd1;
DLong = 36'd1;
$display(" Int = %d\n Word = %b\n Long = %b\n DLong = %b\n", Int, Word, Long, DLong);
Int = -36'd1;
Word = -36'd1;
Long = -36'd1;
DLong = -36'd1;
$display(" Int = %d\n Word = %b\n Long = %b\n DLong = %b\n", Int, Word, Long, DLong);

$display("-------- End point 4 (B) in lab 3  --------");

//point 4 (C)
$display("-------- point 4 (C) in lab 3 --------");
Int = 1;
Word = Int;
Long = Int;
DLong = Int;
$display(" Int = %d\n Word = %b\n Long = %b\n DLong = %b\n", Int, Word, Long, DLong);
Int = -1;
Word = Int;
Long = Int;
DLong = Int;
$display(" Int = %d\n Word = %b\n Long = %b\n DLong = %b\n", Int, Word, Long, DLong);

//point 4 (D)
$display("-------- point 4 (D) in lab 3 --------");
Word = 32'h7eee_777f;
Int=Word;
Long = Word;
DLong = Word;
$display(" Int = %d\n Word = %b\n Long = %b\n DLong = %b\n", Int, Word, Long, DLong);

//point 4 (E)
$display("-------- point 4 (E) in lab 3 --------");
Word = 32'hf777_eee7;
Int=Word;
Long = Word;
DLong = Word;
$display(" Int = %d\n Word = %b\n Long = %b\n DLong = %b\n", Int, Word, Long, DLong);

$display("-------- End point 4 (E) in lab 3  --------");
end 
endmodule
			
