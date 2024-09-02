`timescale 1ns / 1ps

module slave_ram (

    input             clk,
    input       [3:0] addr,
    input             re,
    input      [15:0] data00_r,
    input      [15:0] data01_r,
    input      [15:0] data02_r,
    input      [15:0] data03_r,
    input      [15:0] data04_r,
    input      [15:0] data05_r,
    input      [15:0] data06_r,
    input      [15:0] data07_r,
    input      [15:0] data08_r,
    input      [15:0] data09_r,
    input      [15:0] data10_r,
    input      [15:0] data11_r,
    input      [15:0] data12_r,
    input      [15:0] data13_r,
    input      [15:0] data14_r,
    input      [15:0] data15_r,
		       
    input      [15:0] data00_i,
    input      [15:0] data01_i,
    input      [15:0] data02_i,
    input      [15:0] data03_i,
    input      [15:0] data04_i,
    input      [15:0] data05_i,
    input      [15:0] data06_i,
    input      [15:0] data07_i,
    input      [15:0] data08_i,
    input      [15:0] data09_i,
    input      [15:0] data10_i,
    input      [15:0] data11_i,
    input      [15:0] data12_i,
    input      [15:0] data13_i,
    input      [15:0] data14_i,
    input      [15:0] data15_i,

	  output reg      [15:0] data_r,
    output reg      [15:0] data_i
);

  reg [15:0]  mem_r [15:0];
  reg [15:0]  mem_i [15:0];

  always @ (posedge clk) begin
    mem_r[ 0] <= data00_r;
    mem_r[ 1] <= data01_r;
    mem_r[ 2] <= data02_r;
    mem_r[ 3] <= data03_r;
    mem_r[ 4] <= data04_r;
    mem_r[ 5] <= data05_r;
    mem_r[ 6] <= data06_r;
    mem_r[ 7] <= data07_r;
    mem_r[ 8] <= data08_r;
    mem_r[ 9] <= data09_r;
    mem_r[10] <= data10_r;
    mem_r[11] <= data11_r;
    mem_r[12] <= data12_r;
    mem_r[13] <= data13_r;
    mem_r[14] <= data14_r;
    mem_r[15] <= data15_r;

    mem_i[ 0] <= data00_i;
    mem_i[ 1] <= data01_i;
    mem_i[ 2] <= data02_i;
    mem_i[ 3] <= data03_i;
    mem_i[ 4] <= data04_i;
    mem_i[ 5] <= data05_i;
    mem_i[ 6] <= data06_i;
    mem_i[ 7] <= data07_i;
    mem_i[ 8] <= data08_i;
    mem_i[ 9] <= data09_i;
    mem_i[10] <= data10_i;
    mem_i[11] <= data11_i;
    mem_i[12] <= data12_i;
    mem_i[13] <= data13_i;
    mem_i[14] <= data14_i;
    mem_i[15] <= data15_i;
  end

  always @ (posedge clk) begin
    if (re)
      data_r <= mem_r[addr];
      data_i <= mem_i[addr];
  end

endmodule