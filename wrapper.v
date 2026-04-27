// Auto-generated LEC wrapper for mem_man

module mem_man_wrapper(clk, reset, ins_add, ins_out, mem_read, mem_write, data_add, write_data, read_data);
  input clk;
  input reset;
  input [7:0] ins_add;
  output [15:0] ins_out;
  input mem_read;
  input mem_write;
  input [7:0] data_add;
  input [15:0] write_data;
  output [15:0] read_data;

  // Instantiate the sanitized, bit-blasted module
  mem_man sanitized_inst (
    .clk(clk),
    .reset(reset),
    .ins_add_0(ins_add[0]),
    .ins_add_1(ins_add[1]),
    .ins_add_2(ins_add[2]),
    .ins_add_3(ins_add[3]),
    .ins_add_4(ins_add[4]),
    .ins_add_5(ins_add[5]),
    .ins_add_6(ins_add[6]),
    .ins_add_7(ins_add[7]),
    .ins_out_0(ins_out[0]),
    .ins_out_1(ins_out[1]),
    .ins_out_2(ins_out[2]),
    .ins_out_3(ins_out[3]),
    .ins_out_4(ins_out[4]),
    .ins_out_5(ins_out[5]),
    .ins_out_6(ins_out[6]),
    .ins_out_7(ins_out[7]),
    .ins_out_8(ins_out[8]),
    .ins_out_9(ins_out[9]),
    .ins_out_10(ins_out[10]),
    .ins_out_11(ins_out[11]),
    .ins_out_12(ins_out[12]),
    .ins_out_13(ins_out[13]),
    .ins_out_14(ins_out[14]),
    .ins_out_15(ins_out[15]),
    .mem_read(mem_read),
    .mem_write(mem_write),
    .data_add_0(data_add[0]),
    .data_add_1(data_add[1]),
    .data_add_2(data_add[2]),
    .data_add_3(data_add[3]),
    .data_add_4(data_add[4]),
    .data_add_5(data_add[5]),
    .data_add_6(data_add[6]),
    .data_add_7(data_add[7]),
    .write_data_0(write_data[0]),
    .write_data_1(write_data[1]),
    .write_data_2(write_data[2]),
    .write_data_3(write_data[3]),
    .write_data_4(write_data[4]),
    .write_data_5(write_data[5]),
    .write_data_6(write_data[6]),
    .write_data_7(write_data[7]),
    .write_data_8(write_data[8]),
    .write_data_9(write_data[9]),
    .write_data_10(write_data[10]),
    .write_data_11(write_data[11]),
    .write_data_12(write_data[12]),
    .write_data_13(write_data[13]),
    .write_data_14(write_data[14]),
    .write_data_15(write_data[15]),
    .read_data_0(read_data[0]),
    .read_data_1(read_data[1]),
    .read_data_2(read_data[2]),
    .read_data_3(read_data[3]),
    .read_data_4(read_data[4]),
    .read_data_5(read_data[5]),
    .read_data_6(read_data[6]),
    .read_data_7(read_data[7]),
    .read_data_8(read_data[8]),
    .read_data_9(read_data[9]),
    .read_data_10(read_data[10]),
    .read_data_11(read_data[11]),
    .read_data_12(read_data[12]),
    .read_data_13(read_data[13]),
    .read_data_14(read_data[14]),
    .read_data_15(read_data[15])
  );
endmodule
