`timescale 1ns/100ps
`define PADWIDTH 8
module testbench;
parameter pHi = `PADWIDTH-1;
parameter pPad = 16;
wire [pHi + pPad : 0] Count;
reg Clock, CountEnable, CountReset, OutEnable;
reg i;
ParamCounterTop UUT (Count,Clock,CountEnable,CountReset,OutEnable);
initial
begin
for(i=0; i<1000; i=i+1)
begin
#5 Clock <= ~Clock;
end
end
initial
begin
Clock = 0;
CountEnable = 1;
CountReset = 0;
OutEnable = 1;
$display("---------------------Start Testbench--------------------------");
#10 $display("count=%d clock =%d  countenable=%d  countreset=%d  outenable=%d  ", Count,Clock,CountEnable,CountReset,OutEnable);
#10 $display("count=%d clock =%d  countenable=%d  countreset=%d  outenable=%d  ", Count,Clock,CountEnable,CountReset,OutEnable);
#10 $display("count=%d clock =%d  countenable=%d  countreset=%d  outenable=%d  ", Count,Clock,CountEnable,CountReset,OutEnable);		

CountEnable = 1;
CountReset = 1;
OutEnable = 1;
#10 $display("clock =%d  countenable=%d  countreset=%d  outenable=%d  ", Count,Clock,CountEnable,CountReset,OutEnable);	

CountEnable = 1;
CountReset = 0;
OutEnable = 1;
#10 $display("count=%d clock =%d  countenable=%d  countreset=%d  outenable=%d  ", Count,Clock,CountEnable,CountReset,OutEnable);
#10 $display("count=%d clock =%d  countenable=%d  countreset=%d  outenable=%d  ", Count,Clock,CountEnable,CountReset,OutEnable);
#10 $display("count=%d clock =%d  countenable=%d  countreset=%d  outenable=%d  ", Count,Clock,CountEnable,CountReset,OutEnable);
CountEnable = 1;
CountReset = 0;
OutEnable = 0;
#10 $display("count=%d clock =%d  countenable=%d  countreset=%d  outenable=%d  ", Count,Clock,CountEnable,CountReset,OutEnable);
CountEnable = 1;
CountReset = 0;
OutEnable = 1;
#10 $display("count=%d clock =%d  countenable=%d  countreset=%d  outenable=%d  ", Count,Clock,CountEnable,CountReset,OutEnable);
#10 $display("count=%d clock =%d  countenable=%d  countreset=%d  outenable=%d  ", Count,Clock,CountEnable,CountReset,OutEnable);
#10 $display("count=%d clock =%d  countenable=%d  countreset=%d  outenable=%d  ", Count,Clock,CountEnable,CountReset,OutEnable);
$display("---------------------End Testbench--------------------------");
end;
endmodule;
