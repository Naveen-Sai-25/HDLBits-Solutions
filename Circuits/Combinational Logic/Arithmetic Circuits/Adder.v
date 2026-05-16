// synthesis verilog_input_version verilog_2001
module top_module (
    input  [3:0] x,
    input  [3:0] y,
    output [4:0] sum
);
    wire c1, c2, c3;
    FA X1(.A(x[0]), .B(y[0]), .ci(1'b0), .S(sum[0]), .co(c1));
    FA X2(.A(x[1]), .B(y[1]), .ci(c1),   .S(sum[1]), .co(c2));
    FA X3(.A(x[2]), .B(y[2]), .ci(c2),   .S(sum[2]), .co(c3));
    FA X4(.A(x[3]), .B(y[3]), .ci(c3),   .S(sum[3]), .co(sum[4]));
endmodule
module FA (A,B,ci,S,co);
    input A,B,ci;
    output S,co;
    assign S  = A ^ B ^ ci;
    assign co = (A & B) | (B & ci) | (A & ci);
endmodule