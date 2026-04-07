module sext #(parameter INW = 16)
    ( input [INW-1:0] in
    , output [15:0] out );
//
    reg out;
    integer i;
    always @ (*) begin
        out[INW-1:0] = in;
        for (i=INW;i<16;i=i+1) begin
            out[i]=in[INW-1];
        end
    end
endmodule

