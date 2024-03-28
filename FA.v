module FA(x,y,z,sum,cout);
output sum,cout;
input x,y,z;
assign sum=x^y^z;
assign cout=(x&&y)||(x&&z)||(y&&z);
endmodule