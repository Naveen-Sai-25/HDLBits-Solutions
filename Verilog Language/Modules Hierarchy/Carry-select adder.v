module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] w1,w2;
    wire w3;
    add16 x1(a[15:0],b[15:0],1'b0,sum[15:0],w3);
    add16 x2(a[31:16],b[31:16],1'b0,w1[15:0]);
    add16 x3(a[31:16],b[31:16],1'b1,w2[15:0]);
    assign sum[31:16] = w3 ? w2[15:0] : w1[15:0];
    

endmodule
