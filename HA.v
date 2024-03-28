module HA(a,b,sum,c); 
input a, b; 
output sum, c; 
xor sum1(sum, a, b); 
and carry1(c, a, b); 
endmodule