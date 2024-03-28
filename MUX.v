module MUX(s,I0,I1,f);
input I0;
input I1;
input s;
output reg f;
always @ (I0 or I1 or s)
if(s==0)
f=I0;
else
f=I1;
endmodule
