module alu
    ( input [3:0] op
    , input [15:0] arg1
    , input [15:0] arg2
    , output [15:0] out
    , output [3:0 flags]);
//
    reg out, flags;
    
    // making flags sticky for now.
    always @ (*) begin
        case(op)
            0: out = arg1 + arg2;
            1: out = arg1 - arg2;
            2: out = arg1 << arg2;
            3: out = arg1 >> arg2;
            4: out = 0; // TODO
            5: out = 0; // unassigned
            6: out = 0; // unassigned
            7: out = 0; // TODO
            8: out = arg1 & arg2;
            9: out = arg1 | arg2;
            10:out = arg1 ^ arg2;
            11:out = 0; // unassigned
            12:out = 0; // not implementing
            13:out = 0; // not implementing
            14:out = 0; // maybe doing something but not right now
            15:out = 0; // unassigned
        endcase
    end
endmodule