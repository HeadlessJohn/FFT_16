`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module butterfly (
    input clk,
    input rst,
    input signed [15:0] x0_r,
    input signed [15:0] x0_i,
    input signed [15:0] x1_r,
    input signed [15:0] x1_i,
    input signed [15:0] twiddle_r,
    input signed [15:0] twiddle_i,
    output reg signed  [15:0] f0_r,
    output reg signed  [15:0] f0_i,
    output reg signed  [15:0] f1_r,
    output reg signed  [15:0] f1_i
    );

    wire signed [31:0] f0_r_temp;
    wire signed [31:0] f0_i_temp;
    wire signed [31:0] f1_r_temp;
    wire signed [31:0] f1_i_temp;
    
    wire signed [31:0] temp_s_1 = twiddle_r * x1_r;
    wire signed [31:0] temp_s_2 = twiddle_i * x1_i;
    wire signed [31:0] temp_s_3 = twiddle_r * x1_i;
    wire signed [31:0] temp_s_4 = twiddle_i * x1_r;
    
    wire signed [31:0] temp_1 = (temp_s_1) >>> 8;
    wire signed [31:0] temp_2 = (temp_s_2) >>> 8;
    wire signed [31:0] temp_3 = (temp_s_3) >>> 8;
    wire signed [31:0] temp_4 = (temp_s_4) >>> 8;

    assign f0_r_temp = x0_r + temp_1 - temp_2 ;
    assign f0_i_temp = x0_i + temp_3 + temp_4 ;

    assign f1_r_temp = x0_r - temp_1 + temp_2 ;
    assign f1_i_temp = x0_i - temp_3 - temp_4 ;
    
    always @(posedge clk, posedge rst) begin
        if(rst) begin
            f0_r <= 16'b0;
            f0_i <= 16'b0;
            f1_r <= 16'b0;
            f1_i <= 16'b0;
        end
        else begin
            f0_r <= {f0_r_temp[31], f0_r_temp[14:0]};
            f0_i <= {f0_i_temp[31], f0_i_temp[14:0]};
            f1_r <= {f1_r_temp[31], f1_r_temp[14:0]};
            f1_i <= {f1_i_temp[31], f1_i_temp[14:0]};
        end
    end
endmodule
