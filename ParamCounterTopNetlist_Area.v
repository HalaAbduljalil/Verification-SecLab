/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP3
// Date      : Sun Nov  6 19:06:28 2022
/////////////////////////////////////////////////////////////


module Counter_pHi7_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[7]), .IN2(A[7]), .Q(SUM[7]) );
endmodule


module Counter_pHi7 ( Count, Clock, CountEnable, CountReset );
  output [7:0] Count;
  input Clock, CountEnable, CountReset;
  wire   ClockWire, N4, N5, N6, N7, N8, N9, N10, N11, n1, n2, n3;

  DFFARX1 \CountReg_reg[0]  ( .D(N4), .CLK(ClockWire), .RSTB(n2), .Q(Count[0])
         );
  DFFARX1 \CountReg_reg[1]  ( .D(N5), .CLK(ClockWire), .RSTB(n1), .Q(Count[1])
         );
  DFFARX1 \CountReg_reg[2]  ( .D(N6), .CLK(ClockWire), .RSTB(n1), .Q(Count[2])
         );
  DFFARX1 \CountReg_reg[3]  ( .D(N7), .CLK(ClockWire), .RSTB(n1), .Q(Count[3])
         );
  DFFARX1 \CountReg_reg[4]  ( .D(N8), .CLK(ClockWire), .RSTB(n1), .Q(Count[4])
         );
  DFFARX1 \CountReg_reg[5]  ( .D(N9), .CLK(ClockWire), .RSTB(n2), .Q(Count[5])
         );
  DFFARX1 \CountReg_reg[6]  ( .D(N10), .CLK(ClockWire), .RSTB(n2), .Q(Count[6]) );
  DFFARX1 \CountReg_reg[7]  ( .D(N11), .CLK(ClockWire), .RSTB(n2), .Q(Count[7]) );
  Counter_pHi7_DW01_inc_0 add_40 ( .A(Count), .SUM({N11, N10, N9, N8, N7, N6, 
        N5, N4}) );
  INVX0 U3 ( .INP(n3), .ZN(n2) );
  MUX21X1 U4 ( .IN1(1'b0), .IN2(Clock), .S(CountEnable), .Q(ClockWire) );
  DELLN2X2 U5 ( .INP(CountReset), .Z(n3) );
  INVX0 U6 ( .INP(n3), .ZN(n1) );
endmodule


module Converter_pHi7_pPad16 ( OutBus, InBus, Enable );
  output [23:0] OutBus;
  input [7:0] InBus;
  input Enable;
  wire   n2, n3;

  BSLEX1 \OutBusGate_tri[0]  ( .INOUT1(InBus[0]), .ENB(n3), .INOUT2(OutBus[0])
         );
  BSLEX1 \OutBusGate_tri[1]  ( .INOUT1(InBus[1]), .ENB(n3), .INOUT2(OutBus[1])
         );
  BSLEX1 \OutBusGate_tri[2]  ( .INOUT1(InBus[2]), .ENB(n2), .INOUT2(OutBus[2])
         );
  BSLEX1 \OutBusGate_tri[3]  ( .INOUT1(InBus[3]), .ENB(n2), .INOUT2(OutBus[3])
         );
  BSLEX1 \OutBusGate_tri[4]  ( .INOUT1(InBus[4]), .ENB(n2), .INOUT2(OutBus[4])
         );
  BSLEX1 \OutBusGate_tri[5]  ( .INOUT1(InBus[5]), .ENB(n2), .INOUT2(OutBus[5])
         );
  BSLEX1 \OutBusGate_tri[6]  ( .INOUT1(InBus[6]), .ENB(n2), .INOUT2(OutBus[6])
         );
  BSLEX1 \OutBusGate_tri[7]  ( .INOUT1(InBus[7]), .ENB(n2), .INOUT2(OutBus[7])
         );
  BSLEX1 \OutBusGate_tri[8]  ( .INOUT1(1'b0), .ENB(n2), .INOUT2(OutBus[8]) );
  BSLEX1 \OutBusGate_tri[9]  ( .INOUT1(1'b0), .ENB(n2), .INOUT2(OutBus[9]) );
  BSLEX1 \OutBusGate_tri[10]  ( .INOUT1(1'b0), .ENB(n3), .INOUT2(OutBus[10])
         );
  BSLEX1 \OutBusGate_tri[11]  ( .INOUT1(1'b0), .ENB(n3), .INOUT2(OutBus[11])
         );
  BSLEX1 \OutBusGate_tri[12]  ( .INOUT1(1'b0), .ENB(n3), .INOUT2(OutBus[12])
         );
  BSLEX1 \OutBusGate_tri[13]  ( .INOUT1(1'b0), .ENB(n3), .INOUT2(OutBus[13])
         );
  BSLEX1 \OutBusGate_tri[14]  ( .INOUT1(1'b0), .ENB(n3), .INOUT2(OutBus[14])
         );
  BSLEX1 \OutBusGate_tri[15]  ( .INOUT1(1'b0), .ENB(n3), .INOUT2(OutBus[15])
         );
  BSLEX1 \OutBusGate_tri[16]  ( .INOUT1(1'b0), .ENB(n3), .INOUT2(OutBus[16])
         );
  BSLEX1 \OutBusGate_tri[17]  ( .INOUT1(1'b0), .ENB(n3), .INOUT2(OutBus[17])
         );
  BSLEX1 \OutBusGate_tri[18]  ( .INOUT1(1'b0), .ENB(n3), .INOUT2(OutBus[18])
         );
  BSLEX1 \OutBusGate_tri[19]  ( .INOUT1(1'b0), .ENB(n3), .INOUT2(OutBus[19])
         );
  BSLEX1 \OutBusGate_tri[20]  ( .INOUT1(1'b0), .ENB(n2), .INOUT2(OutBus[20])
         );
  BSLEX1 \OutBusGate_tri[21]  ( .INOUT1(1'b0), .ENB(n2), .INOUT2(OutBus[21])
         );
  BSLEX1 \OutBusGate_tri[22]  ( .INOUT1(1'b0), .ENB(n2), .INOUT2(OutBus[22])
         );
  BSLEX1 \OutBusGate_tri[23]  ( .INOUT1(1'b0), .ENB(n2), .INOUT2(OutBus[23])
         );
  NBUFFX2 U3 ( .INP(Enable), .Z(n2) );
  NBUFFX2 U4 ( .INP(Enable), .Z(n3) );
endmodule


module ParamCounterTop ( Count, Clock, CountEnable, CountReset, OutEnable );
  output [23:0] Count;
  input Clock, CountEnable, CountReset, OutEnable;
  wire   n1, n2, n3;
  wire   [7:0] Xfer;

  Counter_pHi7 Counter01 ( .Count(Xfer), .Clock(n2), .CountEnable(n1), 
        .CountReset(CountReset) );
  Converter_pHi7_pPad16 Converter01 ( .OutBus(Count), .InBus(Xfer), .Enable(n3) );
  DELLN2X2 U1 ( .INP(CountEnable), .Z(n1) );
  DELLN2X2 U2 ( .INP(Clock), .Z(n2) );
  DELLN2X2 U3 ( .INP(OutEnable), .Z(n3) );
endmodule

