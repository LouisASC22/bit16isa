`timescale 1ns / 1ps

module macroprocessor (
    input wire clk,
    input wire reset
);
    // pipeline registers

    // instruction and program counter registers from IF to EX
    reg [15:0] IF_ID_instr;
    reg [15:0] IF_ID_pc;
    reg [15:0] ID_EX_pc;
    reg [15:0] ID_EX_regA;
    reg [15:0] ID_EX_regB;
    reg [15:0] ID_EX_imm;
    
    // the operation being performed by the alu
    reg [3:0] ID_EX_alu_op;
    
    // whether we read/write to memory between ID and EX stage
    reg ID_EX_mem_read;
    reg ID_EX_mem_write;
    reg ID_EX_reg_write;
    
    // the output of the ALU
    reg [15:0] EX_MEM_alu_result;
    reg [15:0] EX_MEM_regB;
    
    // whether we read/write to memory in the EX stage
    reg EX_MEM_mem_read;
    reg EX_MEM_mem_write;
    reg EX_MEM_reg_write;
   
    // writeback registers
    reg [15:0] MEM_WB_data;
    reg [15:0] MEM_WB_alu_result;
   
    // whether data is written back or written through
    reg MEM_WB_reg_write;

    // instruction memory
    // the below structure is a 256 element array of 16 bit elements
    // there is a limit of 256 instructions on our architectureS

    reg [15:0] instr_mem [0:255];
    reg [15:0] data_mem  [0:255];
    reg [15:0] reg_file  [0:15];

    // overall program coutnter
    reg [15:0] pc;

    // --------------------------------------------------------------------------- //
    // --------------------------------------------------------------------------- //

    // instruction fetch stage

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pc <= 0;
            IF_ID_instr <= 0;
            IF_ID_pc <= 0;
        end 
        
        else begin
            pc <= pc + 1;
            IF_ID_instr <= instr_mem[pc];;
            IF_ID_pc <= pc;
        end
    end

    
    // --------------------------------------------------------------------------- //
    // --------------------------------------------------------------------------- //

    // write back stage
    
    always @(posedge clk) begin
        if (MEM_WB_reg_write)
            reg_file[rd] <= (EX_MEM_mem_read) ? MEM_WB_data : MEM_WB_alu_result;
    end

endmodule