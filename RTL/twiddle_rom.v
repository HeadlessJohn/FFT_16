`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2024 01:48:48 PM
// Design Name: 
// Module Name: twiddle_rom
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module twiddle_rom_real(
    input clk,
    input rst,
    output reg signed [15:0]  reg0_r,
    output reg signed [15:0]  reg1_r,
    output reg signed [15:0]  reg2_r,
    output reg signed [15:0]  reg3_r,
    output reg signed [15:0]  reg4_r,
    output reg signed [15:0]  reg5_r,
    output reg signed [15:0]  reg6_r,
    output reg signed [15:0]  reg7_r
    );

    always @(posedge clk, posedge rst) begin
        if(rst) begin
            reg0_r <= 16'b0;
            reg1_r <= 16'b0;
            reg2_r <= 16'b0;
            reg3_r <= 16'b0;
            reg4_r <= 16'b0;
            reg5_r <= 16'b0;
            reg6_r <= 16'b0;
            reg7_r <= 16'b0;
        end
        else begin
            reg0_r <= 16'b0000_0001_0000_0000; // 1
            reg1_r <= 16'b0000_0000_1110_1100; // 0.9238
            reg2_r <= 16'b0000_0000_1011_0100; // 0.7071
            reg3_r <= 16'b0000_0000_0110_0010; // 0.3826
            reg4_r <= 16'b0000_0000_0000_0000; // 0
            reg5_r <= 16'b1111_1111_1001_1110; // -0.3826
            reg6_r <= 16'b1111_1111_0100_1100; // -0.7071
            reg7_r <= 16'b1111_1111_0001_0100; // -0.9238
        end
    end

endmodule

module twiddle_rom_imag(
    input clk,
    input rst,
    output reg signed [15:0]  reg0_i,
    output reg signed [15:0]  reg1_i,
    output reg signed [15:0]  reg2_i,
    output reg signed [15:0]  reg3_i,
    output reg signed [15:0]  reg4_i,
    output reg signed [15:0]  reg5_i,
    output reg signed [15:0]  reg6_i,
    output reg signed [15:0]  reg7_i
    );
    
    always @(posedge clk, posedge rst) begin
        if(rst) begin
            reg0_i <= 16'b0;
            reg1_i <= 16'b0;
            reg2_i <= 16'b0;
            reg3_i <= 16'b0;
            reg4_i <= 16'b0;
            reg5_i <= 16'b0;
            reg6_i <= 16'b0;
            reg7_i <= 16'b0;
        end
        else begin
            reg0_i <= 16'b0000_0000_0000_0000; // 0
            reg1_i <= 16'b1111_1111_1001_1110; // -0.3826
            reg2_i <= 16'b1111_1111_0100_1100; // -0.7071
            reg3_i <= 16'b1111_1111_0001_0100; // -0.9238
            reg4_i <= 16'b1111_1111_0000_0000; // -1 * 256
            reg5_i <= 16'b1111_1111_0001_0100; // -0.9238
            reg6_i <= 16'b1111_1111_0100_1100; // -0.7071
            reg7_i <= 16'b1111_1111_1001_1110; // -0.3826
        end
    end
endmodule
