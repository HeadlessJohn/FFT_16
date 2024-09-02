`timescale 1ns / 1ps



module TOP(
    input clk,
    input rst,
    input [15:0] data_in,
    input [3:0] write_addr,
    input we,
    input [3:0] read_addr,
    input re,
    output [15:0] data_r,
    output [15:0] data_i
    );

    wire [15:0] data_in_00;
    wire [15:0] data_in_01;
    wire [15:0] data_in_02;
    wire [15:0] data_in_03;
    wire [15:0] data_in_04;
    wire [15:0] data_in_05;
    wire [15:0] data_in_06;
    wire [15:0] data_in_07;
    wire [15:0] data_in_08;
    wire [15:0] data_in_09;
    wire [15:0] data_in_10;
    wire [15:0] data_in_11;
    wire [15:0] data_in_12;
    wire [15:0] data_in_13;
    wire [15:0] data_in_14;
    wire [15:0] data_in_15;

    wire [15:0] data00_r;
    wire [15:0] data00_i;
    wire [15:0] data01_r;
    wire [15:0] data01_i;
    wire [15:0] data02_r;
    wire [15:0] data02_i;
    wire [15:0] data03_r;
    wire [15:0] data03_i;
    wire [15:0] data04_r;
    wire [15:0] data04_i;
    wire [15:0] data05_r;
    wire [15:0] data05_i;
    wire [15:0] data06_r;
    wire [15:0] data06_i;
    wire [15:0] data07_r;
    wire [15:0] data07_i;
    wire [15:0] data08_r;
    wire [15:0] data08_i;
    wire [15:0] data09_r;
    wire [15:0] data09_i;
    wire [15:0] data10_r;
    wire [15:0] data10_i;
    wire [15:0] data11_r;
    wire [15:0] data11_i;
    wire [15:0] data12_r;
    wire [15:0] data12_i;
    wire [15:0] data13_r;
    wire [15:0] data13_i;
    wire [15:0] data14_r;
    wire [15:0] data14_i;
    wire [15:0] data15_r;
    wire [15:0] data15_i;

    master_ram master_ram_inst(
        .clk(clk),
        .addr(write_addr),
        .data(data_in),
        .we(we),
        .data00(data_in_00),
        .data01(data_in_01),
        .data02(data_in_02),
        .data03(data_in_03),
        .data04(data_in_04),
        .data05(data_in_05),
        .data06(data_in_06),
        .data07(data_in_07),
        .data08(data_in_08),
        .data09(data_in_09),
        .data10(data_in_10),
        .data11(data_in_11),
        .data12(data_in_12),
        .data13(data_in_13),
        .data14(data_in_14),
        .data15(data_in_15)
    );

    FFT_16 fft_16_inst(
        .clk(clk),
        .rst(rst),
        .data_0 (data_in_00),   
        .data_1 (data_in_01),
        .data_2 (data_in_02),
        .data_3 (data_in_03),
        .data_4 (data_in_04),
        .data_5 (data_in_05),
        .data_6 (data_in_06),
        .data_7 (data_in_07),
        .data_8 (data_in_08),
        .data_9 (data_in_09),
        .data_10(data_in_10),
        .data_11(data_in_11),
        .data_12(data_in_12),
        .data_13(data_in_13),
        .data_14(data_in_14),
        .data_15(data_in_15),
        .o_f0_r (data00_r),
        .o_f0_i (data00_i),
        .o_f1_r (data01_r),
        .o_f1_i (data01_i),
        .o_f2_r (data02_r),
        .o_f2_i (data02_i),
        .o_f3_r (data03_r),
        .o_f3_i (data03_i),
        .o_f4_r (data04_r),
        .o_f4_i (data04_i),
        .o_f5_r (data05_r),
        .o_f5_i (data05_i),
        .o_f6_r (data06_r),
        .o_f6_i (data06_i),
        .o_f7_r (data07_r),
        .o_f7_i (data07_i),
        .o_f8_r (data08_r),
        .o_f8_i (data08_i),
        .o_f9_r (data09_r),
        .o_f9_i (data09_i),
        .o_f10_r(data10_r),
        .o_f10_i(data10_i),
        .o_f11_r(data11_r),
        .o_f11_i(data11_i),
        .o_f12_r(data12_r),
        .o_f12_i(data12_i),
        .o_f13_r(data13_r),
        .o_f13_i(data13_i),
        .o_f14_r(data14_r),
        .o_f14_i(data14_i),
        .o_f15_r(data15_r),
        .o_f15_i(data15_i)
    );

    slave_ram slave_ram_inst(
        .clk(clk),
        .addr(read_addr),
        .re(re),
        .data00_r(data00_r),
        .data00_i(data00_i),
        .data01_r(data01_r),
        .data01_i(data01_i),
        .data02_r(data02_r),
        .data02_i(data02_i),
        .data03_r(data03_r),
        .data03_i(data03_i),
        .data04_r(data04_r),
        .data04_i(data04_i),
        .data05_r(data05_r),
        .data05_i(data05_i),
        .data06_r(data06_r),
        .data06_i(data06_i),
        .data07_r(data07_r),
        .data07_i(data07_i),
        .data08_r(data08_r),
        .data08_i(data08_i),
        .data09_r(data09_r),
        .data09_i(data09_i),
        .data10_r(data10_r),
        .data10_i(data10_i),
        .data11_r(data11_r),
        .data11_i(data11_i),
        .data12_r(data12_r),
        .data12_i(data12_i),
        .data13_r(data13_r),
        .data13_i(data13_i),
        .data14_r(data14_r),
        .data14_i(data14_i),
        .data15_r(data15_r),
        .data15_i(data15_i),
        .data_r(data_r),
        .data_i(data_i)
    );

endmodule
