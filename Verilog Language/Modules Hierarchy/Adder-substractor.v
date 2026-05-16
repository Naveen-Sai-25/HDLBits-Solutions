module top_module(
    input  [31:0] a,
    input  [31:0] b,
    input         sub,
    output [31:0] sum
);
    wire cout, cout1;
    wire [31:0] b_xor = b ^ {32{sub}};
    add16 x1(a[15:0],b_xor[15:0],sub,sum[15:0],cout);
    add16 x2(a[31:16],b_xor[31:16],cout,sum[31:16],cout1);
endmodule