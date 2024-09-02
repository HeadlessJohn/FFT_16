`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module FFT_16 (
    input clk,
    input rst,
    input signed [15:0] data_0,   // 8비트 입력 데이터 (0~255 범위)
    input signed [15:0] data_1,
    input signed [15:0] data_2,
    input signed [15:0] data_3,
    input signed [15:0] data_4,
    input signed [15:0] data_5,
    input signed [15:0] data_6,
    input signed [15:0] data_7,
    input signed [15:0] data_8,
    input signed [15:0] data_9,
    input signed [15:0] data_10,
    input signed [15:0] data_11,
    input signed [15:0] data_12,
    input signed [15:0] data_13,
    input signed [15:0] data_14,
    input signed [15:0] data_15,
    output signed [15:0] o_f0_r,
    output signed [15:0] o_f0_i,
    output signed [15:0] o_f1_r,
    output signed [15:0] o_f1_i,
    output signed [15:0] o_f2_r,
    output signed [15:0] o_f2_i,
    output signed [15:0] o_f3_r,
    output signed [15:0] o_f3_i,
    output signed [15:0] o_f4_r,
    output signed [15:0] o_f4_i,
    output signed [15:0] o_f5_r,
    output signed [15:0] o_f5_i,
    output signed [15:0] o_f6_r,
    output signed [15:0] o_f6_i,
    output signed [15:0] o_f7_r,
    output signed [15:0] o_f7_i,
    output signed [15:0] o_f8_r,
    output signed [15:0] o_f8_i,
    output signed [15:0] o_f9_r,
    output signed [15:0] o_f9_i,
    output signed [15:0] o_f10_r,
    output signed [15:0] o_f10_i,
    output signed [15:0] o_f11_r,
    output signed [15:0] o_f11_i,
    output signed [15:0] o_f12_r,
    output signed [15:0] o_f12_i,
    output signed [15:0] o_f13_r,
    output signed [15:0] o_f13_i,
    output signed [15:0] o_f14_r,
    output signed [15:0] o_f14_i,
    output signed [15:0] o_f15_r,
    output signed [15:0] o_f15_i
);
    wire signed [15:0] twd0_r, twd1_r, twd2_r, twd3_r, twd4_r, twd5_r, twd6_r, twd7_r;
    wire signed [15:0] twd0_i, twd1_i, twd2_i, twd3_i, twd4_i, twd5_i, twd6_i, twd7_i;
    wire signed [15:0]  s1_0_r,  s2_0_r,  s3_0_r;
    wire signed [15:0]  s1_1_r,  s2_1_r,  s3_1_r;
    wire signed [15:0]  s1_2_r,  s2_2_r,  s3_2_r;
    wire signed [15:0]  s1_3_r,  s2_3_r,  s3_3_r;
    wire signed [15:0]  s1_4_r,  s2_4_r,  s3_4_r;
    wire signed [15:0]  s1_5_r,  s2_5_r,  s3_5_r;
    wire signed [15:0]  s1_6_r,  s2_6_r,  s3_6_r;
    wire signed [15:0]  s1_7_r,  s2_7_r,  s3_7_r;
    wire signed [15:0]  s1_8_r,  s2_8_r,  s3_8_r;
    wire signed [15:0]  s1_9_r,  s2_9_r,  s3_9_r;
    wire signed [15:0] s1_10_r, s2_10_r, s3_10_r;
    wire signed [15:0] s1_11_r, s2_11_r, s3_11_r;
    wire signed [15:0] s1_12_r, s2_12_r, s3_12_r;
    wire signed [15:0] s1_13_r, s2_13_r, s3_13_r;
    wire signed [15:0] s1_14_r, s2_14_r, s3_14_r;
    wire signed [15:0] s1_15_r, s2_15_r, s3_15_r;
    wire signed [15:0]  s1_0_i,  s2_0_i,  s3_0_i;
    wire signed [15:0]  s1_1_i,  s2_1_i,  s3_1_i;
    wire signed [15:0]  s1_2_i,  s2_2_i,  s3_2_i;
    wire signed [15:0]  s1_3_i,  s2_3_i,  s3_3_i;
    wire signed [15:0]  s1_4_i,  s2_4_i,  s3_4_i;
    wire signed [15:0]  s1_5_i,  s2_5_i,  s3_5_i;
    wire signed [15:0]  s1_6_i,  s2_6_i,  s3_6_i;
    wire signed [15:0]  s1_7_i,  s2_7_i,  s3_7_i;
    wire signed [15:0]  s1_8_i,  s2_8_i,  s3_8_i;
    wire signed [15:0]  s1_9_i,  s2_9_i,  s3_9_i;
    wire signed [15:0] s1_10_i, s2_10_i, s3_10_i;
    wire signed [15:0] s1_11_i, s2_11_i, s3_11_i;
    wire signed [15:0] s1_12_i, s2_12_i, s3_12_i;
    wire signed [15:0] s1_13_i, s2_13_i, s3_13_i;
    wire signed [15:0] s1_14_i, s2_14_i, s3_14_i;
    wire signed [15:0] s1_15_i, s2_15_i, s3_15_i;

    wire signed [15:0]  out0_r;
    wire signed [15:0]  out1_r;
    wire signed [15:0]  out2_r;
    wire signed [15:0]  out3_r;
    wire signed [15:0]  out4_r;
    wire signed [15:0]  out5_r;
    wire signed [15:0]  out6_r;
    wire signed [15:0]  out7_r;
    wire signed [15:0]  out8_r;
    wire signed [15:0]  out9_r;
    wire signed [15:0] out10_r;
    wire signed [15:0] out11_r;
    wire signed [15:0] out12_r;
    wire signed [15:0] out13_r;
    wire signed [15:0] out14_r;
    wire signed [15:0] out15_r;

    wire clk_quater, clk_half, clk_1x;

    clock_div clock_div_inst (
        .clk(clk),
        .rst(rst),
        .clk_out(clk_1x),
        .clk_half(clk_half),
        .clk_quater(clk_quater)
    );


    pipeline_stage pipe(
        .clk(clk),
        .rst(rst),
        .in0_r  (data_0),
        .in1_r  (data_1),
        .in2_r  (data_2),
        .in3_r  (data_3),
        .in4_r  (data_4),
        .in5_r  (data_5),
        .in6_r  (data_6),
        .in7_r  (data_7),
        .in8_r  (data_8),
        .in9_r  (data_9),
        .in10_r (data_10),
        .in11_r (data_11),
        .in12_r (data_12),
        .in13_r (data_13),
        .in14_r (data_14),
        .in15_r (data_15),
        .in0_i  (0),
        .in1_i  (0),
        .in2_i  (0),
        .in3_i  (0),
        .in4_i  (0),
        .in5_i  (0),
        .in6_i  (0),
        .in7_i  (0),
        .in8_i  (0),
        .in9_i  (0),
        .in10_i (0),
        .in11_i (0),
        .in12_i (0),
        .in13_i (0),
        .in14_i (0),
        .in15_i (0),
        .out0_r ( out0_r),
        .out1_r ( out1_r),
        .out2_r ( out2_r),
        .out3_r ( out3_r),
        .out4_r ( out4_r),
        .out5_r ( out5_r),
        .out6_r ( out6_r),
        .out7_r ( out7_r),
        .out8_r ( out8_r),
        .out9_r ( out9_r),
        .out10_r(out10_r),
        .out11_r(out11_r),
        .out12_r(out12_r),
        .out13_r(out13_r),
        .out14_r(out14_r),
        .out15_r(out15_r)
    );

    // twiddle rom
    twiddle_rom_real tdr(
        .clk(clk),
        .rst(rst),
        .reg0_r(twd0_r),
        .reg1_r(twd1_r),
        .reg2_r(twd2_r),
        .reg3_r(twd3_r),
        .reg4_r(twd4_r),
        .reg5_r(twd5_r),
        .reg6_r(twd6_r),
        .reg7_r(twd7_r)
    );

    twiddle_rom_imag tdi(
        .clk(clk),
        .rst(rst),
        .reg0_i(twd0_i),
        .reg1_i(twd1_i),
        .reg2_i(twd2_i),
        .reg3_i(twd3_i),
        .reg4_i(twd4_i),
        .reg5_i(twd5_i),
        .reg6_i(twd6_i),
        .reg7_i(twd7_i)
    );

    // butterfly stage 1
    butterfly bt_stage1_w0_0 (
        .clk(clk),
        .rst(rst),
        .x0_r(out0_r),
        .x0_i(16'b0),
        .x1_r(out8_r),
        .x1_i(16'b0),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(s1_0_r),
        .f0_i(s1_0_i),
        .f1_r(s1_8_r),
        .f1_i(s1_8_i)
    );

    butterfly bt_stage1_w0_1 (
        .clk(clk),
        .rst(rst),
        .x0_r(out4_r),
        .x0_i(16'b0),
        .x1_r(out12_r),
        .x1_i(16'b0),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(s1_4_r),
        .f0_i(s1_4_i),
        .f1_r(s1_12_r),
        .f1_i(s1_12_i)
    );

    butterfly bt_stage1_w0_2 (
        .clk(clk),
        .rst(rst),
        .x0_r(out2_r),
        .x0_i(16'b0),
        .x1_r(out10_r),
        .x1_i(16'b0),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(s1_2_r),
        .f0_i(s1_2_i),
        .f1_r(s1_10_r),
        .f1_i(s1_10_i)
    );

    butterfly bt_stage1_w0_3 (
        .clk(clk),
        .rst(rst),
        .x0_r(out6_r),
        .x0_i(16'b0),
        .x1_r(out14_r),
        .x1_i(16'b0),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(s1_6_r),
        .f0_i(s1_6_i),
        .f1_r(s1_14_r),
        .f1_i(s1_14_i)
    );

    butterfly bt_stage1_w0_4 (
        .clk(clk),
        .rst(rst),
        .x0_r(out1_r),
        .x0_i(16'b0),
        .x1_r(out9_r),
        .x1_i(16'b0),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(s1_1_r),
        .f0_i(s1_1_i),
        .f1_r(s1_9_r),
        .f1_i(s1_9_i)
    );

    butterfly bt_stage1_w0_5 (
        .clk(clk),
        .rst(rst),
        .x0_r(out5_r),
        .x0_i(16'b0),
        .x1_r(out13_r),
        .x1_i(16'b0),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(s1_5_r),
        .f0_i(s1_5_i),
        .f1_r(s1_13_r),
        .f1_i(s1_13_i)
    );

    butterfly bt_stage1_w0_6 (
        .clk(clk),
        .rst(rst),
        .x0_r(out3_r),
        .x0_i(16'b0),
        .x1_r(out11_r),
        .x1_i(16'b0),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(s1_3_r),
        .f0_i(s1_3_i),
        .f1_r(s1_11_r),
        .f1_i(s1_11_i)
    );

    butterfly bt_stage1_w0_7(
        .clk(clk),
        .rst(rst),
        .x0_r(out7_r),
        .x0_i(16'b0),
        .x1_r(out15_r),
        .x1_i(16'b0),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(s1_7_r),
        .f0_i(s1_7_i),
        .f1_r(s1_15_r),
        .f1_i(s1_15_i)
    );

    // butterfly stage 2
    butterfly bt_stage2_w0_0 (
        .clk(clk),
        .rst(rst),
        .x0_r(s1_0_r),
        .x0_i(s1_0_i),
        .x1_r(s1_4_r),
        .x1_i(s1_4_i),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(s2_0_r),
        .f0_i(s2_0_i),
        .f1_r(s2_4_r),
        .f1_i(s2_4_i)
    );

    butterfly bt_stage2_w4_1 (
        .clk(clk),
        .rst(rst),
        .x0_r(s1_8_r),
        .x0_i(s1_8_i),
        .x1_r(s1_12_r),
        .x1_i(s1_12_i),
        .twiddle_r(twd4_r),
        .twiddle_i(twd4_i),
        .f0_r(s2_8_r),
        .f0_i(s2_8_i),
        .f1_r(s2_12_r),
        .f1_i(s2_12_i)
    );

    butterfly bt_stage2_w0_2 (
        .clk(clk),
        .rst(rst),
        .x0_r(s1_2_r),
        .x0_i(s1_2_i),
        .x1_r(s1_6_r),
        .x1_i(s1_6_i),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(s2_2_r),
        .f0_i(s2_2_i),
        .f1_r(s2_6_r),
        .f1_i(s2_6_i)
    );
    
    butterfly bt_stage2_w4_3 (
        .clk(clk),
        .rst(rst),
        .x0_r(s1_10_r),
        .x0_i(s1_10_i),
        .x1_r(s1_14_r),
        .x1_i(s1_14_i),
        .twiddle_r(twd4_r),
        .twiddle_i(twd4_i),
        .f0_r(s2_10_r),
        .f0_i(s2_10_i),
        .f1_r(s2_14_r),
        .f1_i(s2_14_i)
    );

    butterfly bt_stage2_w0_4 (
        .clk(clk),
        .rst(rst),
        .x0_r(s1_1_r),
        .x0_i(s1_1_i),
        .x1_r(s1_5_r),
        .x1_i(s1_5_i),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(s2_1_r),
        .f0_i(s2_1_i),
        .f1_r(s2_5_r),
        .f1_i(s2_5_i)
    );

    butterfly bt_stage2_w4_5 (
        .clk(clk),
        .rst(rst),
        .x0_r(s1_9_r),
        .x0_i(s1_9_i),
        .x1_r(s1_13_r),
        .x1_i(s1_13_i),
        .twiddle_r(twd4_r),
        .twiddle_i(twd4_i),
        .f0_r(s2_9_r),
        .f0_i(s2_9_i),
        .f1_r(s2_13_r),
        .f1_i(s2_13_i)
    );

    butterfly bt_stage2_w0_6 (
        .clk(clk),
        .rst(rst),
        .x0_r(s1_3_r),
        .x0_i(s1_3_i),
        .x1_r(s1_7_r),
        .x1_i(s1_7_i),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(s2_3_r),
        .f0_i(s2_3_i),
        .f1_r(s2_7_r),
        .f1_i(s2_7_i)
    );
    
    butterfly bt_stage2_w4_7 (
        .clk(clk),
        .rst(rst),
        .x0_r(s1_11_r),
        .x0_i(s1_11_i),
        .x1_r(s1_15_r),
        .x1_i(s1_15_i),
        .twiddle_r(twd4_r),
        .twiddle_i(twd4_i),
        .f0_r(s2_11_r),
        .f0_i(s2_11_i),
        .f1_r(s2_15_r),
        .f1_i(s2_15_i)
    );

    // butterfly stage 3
    butterfly bt_stage3_w0_0 (
        .clk(clk),
        .rst(rst),
        .x0_r(s2_0_r),
        .x0_i(s2_0_i),
        .x1_r(s2_2_r),
        .x1_i(s2_2_i),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(s3_0_r),
        .f0_i(s3_0_i),
        .f1_r(s3_2_r),
        .f1_i(s3_2_i)
    );

    butterfly bt_stage3_w2_1 (
        .clk(clk),
        .rst(rst),
        .x0_r(s2_8_r),
        .x0_i(s2_8_i),
        .x1_r(s2_10_r),
        .x1_i(s2_10_i),
        .twiddle_r(twd2_r),
        .twiddle_i(twd2_i),
        .f0_r(s3_8_r),
        .f0_i(s3_8_i),
        .f1_r(s3_10_r),
        .f1_i(s3_10_i)
    );

    butterfly bt_stage3_w4_2 (
        .clk(clk),
        .rst(rst),
        .x0_r(s2_4_r),
        .x0_i(s2_4_i),
        .x1_r(s2_6_r),
        .x1_i(s2_6_i),
        .twiddle_r(twd4_r),
        .twiddle_i(twd4_i),
        .f0_r(s3_4_r),
        .f0_i(s3_4_i),
        .f1_r(s3_6_r),
        .f1_i(s3_6_i)
    );
    
    butterfly bt_stage3_w6_3 (
        .clk(clk),
        .rst(rst),
        .x0_r(s2_12_r),
        .x0_i(s2_12_i),
        .x1_r(s2_14_r),
        .x1_i(s2_14_i),
        .twiddle_r(twd6_r),
        .twiddle_i(twd6_i),
        .f0_r(s3_12_r),
        .f0_i(s3_12_i),
        .f1_r(s3_14_r),
        .f1_i(s3_14_i)
    );

    butterfly bt_stage3_w0_4 (
        .clk(clk),
        .rst(rst),
        .x0_r(s2_1_r),
        .x0_i(s2_1_i),
        .x1_r(s2_3_r),
        .x1_i(s2_3_i),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(s3_1_r),
        .f0_i(s3_1_i),
        .f1_r(s3_3_r),
        .f1_i(s3_3_i)
    );

    butterfly bt_stage3_w2_5 (
        .clk(clk),
        .rst(rst),
        .x0_r(s2_9_r),
        .x0_i(s2_9_i),
        .x1_r(s2_11_r),
        .x1_i(s2_11_i),
        .twiddle_r(twd2_r),
        .twiddle_i(twd2_i),
        .f0_r(s3_9_r),
        .f0_i(s3_9_i),
        .f1_r(s3_11_r),
        .f1_i(s3_11_i)
    );

    butterfly bt_stage3_w4_6 (
        .clk(clk),
        .rst(rst),
        .x0_r(s2_5_r),
        .x0_i(s2_5_i),
        .x1_r(s2_7_r),
        .x1_i(s2_7_i),
        .twiddle_r(twd4_r),
        .twiddle_i(twd4_i),
        .f0_r(s3_5_r),
        .f0_i(s3_5_i),
        .f1_r(s3_7_r),
        .f1_i(s3_7_i)
    );
    
    butterfly bt_stage3_w6_7 (
        .clk(clk),
        .rst(rst),
        .x0_r(s2_13_r),
        .x0_i(s2_13_i),
        .x1_r(s2_15_r),
        .x1_i(s2_15_i),
        .twiddle_r(twd6_r),
        .twiddle_i(twd6_i),
        .f0_r(s3_13_r),
        .f0_i(s3_13_i),
        .f1_r(s3_15_r),
        .f1_i(s3_15_i)
    );

    // butterfly stage 4
    butterfly bt_stage4_w0_0 (
        .clk(clk),
        .rst(rst),
        .x0_r(s3_0_r),
        .x0_i(s3_0_i),
        .x1_r(s3_1_r),
        .x1_i(s3_1_i),
        .twiddle_r(twd0_r),
        .twiddle_i(twd0_i),
        .f0_r(o_f0_r),
        .f0_i(o_f0_i),
        .f1_r(o_f8_r),
        .f1_i(o_f8_i)
    );

    butterfly bt_stage4_w1_1 (
        .clk(clk),
        .rst(rst),
        .x0_r(s3_8_r),
        .x0_i(s3_8_i),
        .x1_r(s3_9_r),
        .x1_i(s3_9_i),
        .twiddle_r(twd1_r),
        .twiddle_i(twd1_i),
        .f0_r(o_f1_r),
        .f0_i(o_f1_i),
        .f1_r(o_f9_r),
        .f1_i(o_f9_i)
    );

    butterfly bt_stage4_w2_2 (
        .clk(clk),
        .rst(rst),
        .x0_r(s3_4_r),
        .x0_i(s3_4_i),
        .x1_r(s3_5_r),
        .x1_i(s3_5_i),
        .twiddle_r(twd2_r),
        .twiddle_i(twd2_i),
        .f0_r(o_f2_r),
        .f0_i(o_f2_i),
        .f1_r(o_f10_r),
        .f1_i(o_f10_i)
    );

    butterfly bt_stage4_w3_3 (
        .clk(clk),
        .rst(rst),
        .x0_r(s3_12_r),
        .x0_i(s3_12_i),
        .x1_r(s3_13_r),
        .x1_i(s3_13_i),
        .twiddle_r(twd3_r),
        .twiddle_i(twd3_i),
        .f0_r(o_f3_r),
        .f0_i(o_f3_i),
        .f1_r(o_f11_r),
        .f1_i(o_f11_i)
    );

    butterfly bt_stage4_w4_4 (
        .clk(clk),
        .rst(rst),
        .x0_r(s3_2_r),
        .x0_i(s3_2_i),
        .x1_r(s3_3_r),
        .x1_i(s3_3_i),
        .twiddle_r(twd4_r),
        .twiddle_i(twd4_i),
        .f0_r(o_f4_r),
        .f0_i(o_f4_i),
        .f1_r(o_f12_r),
        .f1_i(o_f12_i)
    );

    butterfly bt_stage4_w5_5 (
        .clk(clk),
        .rst(rst),
        .x0_r(s3_10_r),
        .x0_i(s3_10_i),
        .x1_r(s3_11_r),
        .x1_i(s3_11_i),
        .twiddle_r(twd5_r),
        .twiddle_i(twd5_i),
        .f0_r(o_f5_r),
        .f0_i(o_f5_i),
        .f1_r(o_f13_r),
        .f1_i(o_f13_i)
    );

    butterfly bt_stage4_w6_6 (
        .clk(clk),
        .rst(rst),
        .x0_r(s3_6_r),
        .x0_i(s3_6_i),
        .x1_r(s3_7_r),
        .x1_i(s3_7_i),
        .twiddle_r(twd6_r),
        .twiddle_i(twd6_i),
        .f0_r(o_f6_r),
        .f0_i(o_f6_i),
        .f1_r(o_f14_r),
        .f1_i(o_f14_i)
    );

    butterfly bt_stage4_w7_7 (
        .clk(clk),
        .rst(rst),
        .x0_r(s3_14_r),
        .x0_i(s3_14_i),
        .x1_r(s3_15_r),
        .x1_i(s3_15_i),
        .twiddle_r(twd7_r),
        .twiddle_i(twd7_i),
        .f0_r(o_f7_r),
        .f0_i(o_f7_i),
        .f1_r(o_f15_r),
        .f1_i(o_f15_i)
    );

endmodule