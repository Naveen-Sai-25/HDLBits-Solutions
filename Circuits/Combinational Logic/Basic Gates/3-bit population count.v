module top_module( 
    input [2:0] in,
    output [1:0] out );
    integer i;
    reg [1:0] cnt;
    always@(in)
        begin
            cnt=2'b00;
            for (i=0;i<3;i=i+1)
                begin
                    if(in[i]==2'b01)
                        cnt=cnt+2'b01;
                end
                  out=cnt;
        end

endmodule
