`timescale 1ns / 1ps

module mem_man #(
    parameter ADDR_WIDTH = 8,
    parameter MEM_FILE = "prog.mem"
)(
    input wire clk,
    input wire reset,

    // instruction fetch port
    input wire [ADDR_WIDTH-1:0] ins_add,
    output reg [15:0] ins_out,

    // data memory port
    input wire mem_read,
    input wire mem_write,
    input wire [ADDR_WIDTH-1:0] data_add,
    input wire [15:0] write_data,
    output reg [15:0] read_data
);

    localparam MEM_DEPTH = (1 << ADDR_WIDTH);

    reg [15:0] memory [0:MEM_DEPTH-1];

    integer i;

    initial begin
        $readmemh(MEM_FILE, memory);
    end

    // instrusction fetch stage
    always @(*) begin
        ins_out = memory[ins_add];
    end

    // data read
    always @(*) begin
        if (mem_read)
            read_data = memory[data_add];
        else
            read_data = 16'h0000;
    end

    // data write stage
    // also hadles resets at this point
    always @(posedge clk) begin
        if (reset) begin
            for (i = 0; i < MEM_DEPTH; i = i + 1) begin
                memory[i] <= 16'h0000;
            end
        end else begin
            if (mem_write) begin
                memory[data_add] <= write_data;
            end
        end
    end

endmodule