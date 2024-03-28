/*module Comp(B0,B1,B2,B3,s0,s1,s2,s3);
output s0,s1,s2,s3;
input B0,B1,B2,B3;
assign s0=!B0;
assign s1=B1;
assign s2=B2^B1;
assign s3=!B3&&!B2&&!B1;
endmodule*/
module Comp(B,s);
output [3:0]s;
input [3:0]B;
assign s[0]=!B[0];
assign s[1]=B[1];
assign s[2]=B[2]^B[1];
assign s[3]=!B[3]&&!B[2]&&!B[1];
endmodule 