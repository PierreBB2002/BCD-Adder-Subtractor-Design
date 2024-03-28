module BCD_ADDER(A,B,res);
output [5:0]res;
input [3:0]A;
input [3:0]B;
HA h1(A[0],B[0],w1,w2);
FA f1(w2,A[1],B[1],w3,w4);
FA f2(w4,A[2],B[2],w5,w6);
FA f3(w6,A[3],B[3],w7,w8);
assign F=w8||(w7&&(w5||w3));
HA f4(w3,F,s1,w9);
FA f5(w9,w5,F,s2,w10);
HA f6(w10,w7,s3,Cout);
HA f7(Cout,w8,s4,Cfout);
assign res[0]=w1;
assign res[1]=s1;
assign res[2]=s2;
assign res[3]=s3;
assign res[4]=s4;
assign res[5]=Cfout;
endmodule
/*
pierre backleh
1201296
*/