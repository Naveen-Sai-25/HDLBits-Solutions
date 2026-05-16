module full_adder(a, b, cin, sum, carry);
  input a, b, cin;
  output sum, carry;
  assign sum   = a ^ b ^ cin;
  assign carry = (a & b) | (cin & (a ^ b));
endmodule
module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    wire [100:0] carry;
    genvar i;
    assign carry[0]=cin;
    generate
        for(i=0;i<100;i=i+1)
            begin : bit_adder
                full_adder fa(a[i],b[i],carry[i],sum[i],carry[i+1]);
                assign cout[i] = carry[i+1];
            end
    endgenerate
endmodule
