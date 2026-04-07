module sext_tb ();
    // i know we're supposed to write these but it really feels a little
    // bit excessive
    reg [4:0] in1;
    reg [8:0] in2;
    reg [15:0] out;
    
    sext t1 #(5) (.in(in1), .out(out));
    sext t2 #(9) (.in(in2), .out(out));
    
    initial begin
        $dumpfile("sext.vcd");
        $dumpvars(0, q3_tb);
        
        // meh. TODO.
        
        $finish;
    end
endmodule