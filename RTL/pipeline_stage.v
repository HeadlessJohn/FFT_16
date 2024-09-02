`timescale 1ns / 1ps


module pipeline_stage #
(
    parameter N = 16
)
(
    input                   clk,
    input                   rst,
    input      signed [N-1:0]     in0_r,
    input      signed [N-1:0]     in0_i,
    input      signed [N-1:0]     in1_r,
    input      signed [N-1:0]     in1_i,
    input      signed [N-1:0]     in2_r,
    input      signed [N-1:0]     in2_i,
    input      signed [N-1:0]     in3_r,
    input      signed [N-1:0]     in3_i,
    input      signed [N-1:0]     in4_r,
    input      signed [N-1:0]     in4_i,
    input      signed [N-1:0]     in5_r,
    input      signed [N-1:0]     in5_i,
    input      signed [N-1:0]     in6_r,
    input      signed [N-1:0]     in6_i,
    input      signed [N-1:0]     in7_r,
    input      signed [N-1:0]     in7_i,
    input      signed [N-1:0]     in8_r,
    input      signed [N-1:0]     in8_i,
    input      signed [N-1:0]     in9_r,
    input      signed [N-1:0]     in9_i,
    input      signed [N-1:0]     in10_r,
    input      signed [N-1:0]     in10_i,
    input      signed [N-1:0]     in11_r,
    input      signed [N-1:0]     in11_i,
    input      signed [N-1:0]     in12_r,
    input      signed [N-1:0]     in12_i,
    input      signed [N-1:0]     in13_r,
    input      signed [N-1:0]     in13_i,
    input      signed [N-1:0]     in14_r,
    input      signed [N-1:0]     in14_i,
    input      signed [N-1:0]     in15_r,
    input      signed [N-1:0]     in15_i,

    output reg signed [N-1:0]     out0_r,
    output reg signed [N-1:0]     out0_i,
    output reg signed [N-1:0]     out1_r,
    output reg signed [N-1:0]     out1_i,
    output reg signed [N-1:0]     out2_r,
    output reg signed [N-1:0]     out2_i,
    output reg signed [N-1:0]     out3_r,
    output reg signed [N-1:0]     out3_i,
    output reg signed [N-1:0]     out4_r,
    output reg signed [N-1:0]     out4_i,
    output reg signed [N-1:0]     out5_r,
    output reg signed [N-1:0]     out5_i,
    output reg signed [N-1:0]     out6_r,
    output reg signed [N-1:0]     out6_i,
    output reg signed [N-1:0]     out7_r,
    output reg signed [N-1:0]     out7_i,
    output reg signed [N-1:0]     out8_r,
    output reg signed [N-1:0]     out8_i,
    output reg signed [N-1:0]     out9_r,
    output reg signed [N-1:0]     out9_i,
    output reg signed [N-1:0]     out10_r,
    output reg signed [N-1:0]     out10_i,
    output reg signed [N-1:0]     out11_r,
    output reg signed [N-1:0]     out11_i,
    output reg signed [N-1:0]     out12_r,
    output reg signed [N-1:0]     out12_i,
    output reg signed [N-1:0]     out13_r,
    output reg signed [N-1:0]     out13_i,
    output reg signed [N-1:0]     out14_r,
    output reg signed [N-1:0]     out14_i,
    output reg signed [N-1:0]     out15_r,
    output reg signed [N-1:0]     out15_i
    );

    always @ (posedge clk or posedge rst) begin
      if(rst) begin
        out0_r  <= 0;
        out0_i  <= 0;
        out1_r  <= 0;
        out1_i  <= 0;
        out2_r  <= 0;
        out2_i  <= 0;
        out3_r  <= 0;
        out3_i  <= 0;
        out4_r  <= 0;
        out4_i  <= 0;
        out5_r  <= 0;
        out5_i  <= 0;
        out6_r  <= 0;
        out6_i  <= 0;
        out7_r  <= 0;
        out7_i  <= 0;
        out8_r  <= 0;
        out8_i  <= 0;
        out9_r  <= 0;
        out9_i  <= 0;
        out10_r <= 0;
        out10_i <= 0;
        out11_r <= 0;
        out11_i <= 0;
        out12_r <= 0;
        out12_i <= 0;
        out13_r <= 0;
        out13_i <= 0;
        out14_r <= 0;
        out14_i <= 0;
        out15_r <= 0;
        out15_i <= 0;
      end
      else begin
        out0_r  <= in0_r;
        out0_i  <= in0_i;
        out1_r  <= in1_r;
        out1_i  <= in1_i;
        out2_r  <= in2_r;
        out2_i  <= in2_i;
        out3_r  <= in3_r;
        out3_i  <= in3_i;
        out4_r  <= in4_r;
        out4_i  <= in4_i;
        out5_r  <= in5_r;
        out5_i  <= in5_i;
        out6_r  <= in6_r;
        out6_i  <= in6_i;
        out7_r  <= in7_r;
        out7_i  <= in7_i;
        out8_r  <= in8_r;
        out8_i  <= in8_i;
        out9_r  <= in9_r;
        out9_i  <= in9_i;
        out10_r <= in10_r;
        out10_i <= in10_i;
        out11_r <= in11_r;
        out11_i <= in11_i;
        out12_r <= in12_r;
        out12_i <= in12_i;
        out13_r <= in13_r;
        out13_i <= in13_i;
        out14_r <= in14_r;
        out14_i <= in14_i;
        out15_r <= in15_r;
        out15_i <= in15_i;
      end
    end //always

endmodule