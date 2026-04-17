module proc();
    // fdxmw pipeline
    // probably retain pc through to x for simplicity? and handle immed pool
    // math stuff there? idk.
    
    // we only have one read port on our memory. we could do some caching stuff
    // but it's not required for the assignment so ehhhhhhhh... 
    // for the sake of intellectual curiosity though we could probably do a 
    // direct mapped i and d cache with 64 16 word lines and have things work
    // out reasonably well while fitting decently well in luts (is distributed
    // ram the term?) with a total of about 33kbits of state across the two,
    // including tags.
    // since we can though, let's just clock our memory twice as fast as the
    // core :>
    


    // staging regs
    reg [15:0] pc_f, [15:0] pc_d;
    reg [15:0] arg2_d; // immediates, incl mem offsets
    reg [15:0] res_x; // x res needs to be preserved through m, or if they're
                      // an absolute address they need to be provided to m.
    reg [3:0] flags_x;
    reg [3:0] op_d;
    reg [2:0] arg1_reg_d;
    reg [2:0] arg2_reg_d;
    reg arg2_regsel_d; // 1 -> arg2 from reg
    reg [2:0] reg_dest_d, [2:0] reg_dest_x;
    reg res_is_mem_d, res_is_mem_x; // alu output is to be dereferenced.
                                    //is x neccessary here?
    
    
    // grps
    reg [8] regs [15:0];
    
    
    
endmodule