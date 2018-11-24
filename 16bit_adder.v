module Full_Adder(D1, D2, Cin,Sum_out, Cout);

input D1, D2, Cin; 
output Sum_out, Cout;
wire a1, a2, a3;    

xor u1(a1,D1,D2);
and u2(a2,D1,D2);
and u3(a3,a1,Cin);
or u4(Cout,a2,a3);
xor u5(Sum_out,a1,Cin); 

endmodule  

//4 bit full adder using 4 single bit full adders
module adder_4bit ( a ,b ,cin,sum ,carry );

output [3:0] sum;
output carry;
input [3:0] a;
input [3:0] b;
input cin; 

wire [2:0]s;

Full_Adder u0 (a[0],b[0],1'b0,sum[0],s[0]);
Full_Adder u1 (a[1],b[1],s[0],sum[1],s[1]);
Full_Adder u2 (a[2],b[2],s[1],sum[2],s[2]);
Full_Adder u3 (a[3],b[3],s[2],sum[3],carry);

endmodule

//16 bit full adder using 4 4bit adders
module adder_16bit(a,b,sum,carry);

input [15:0] a;
input [15:0] b;
output [15:0] sum;
output carry;

wire[2:0] s;

adder_4bit u0 (a[3:0],b[3:0],1'b0,sum[3:0],s[0]);
adder_4bit u1 (a[7:4],b[7:4],s[0],sum[7:4],s[1]);
adder_4bit u2 (a[11:8],b[11:8],s[1],sum[11:8],s[2]);
adder_4bit u3 (a[15:12],b[15:12],s[2],sum[15:12],carry);

endmodule