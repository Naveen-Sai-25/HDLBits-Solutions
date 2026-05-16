module top_module( 
    input [254:0] in,
    output [7:0] out );
    reg [7:0] cnt;
    integer i;
    always@(in)
        begin
            cnt=8'b00;
            for (i=0;i<255;i=i+1)
                begin
                    if(in[i]==2'b01)
                        cnt=cnt+2'b01;
                end
                  out=cnt;
        end

endmodule
