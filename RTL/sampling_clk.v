`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2024 09:57:24 PM
// Design Name: 
// Module Name: sampling_clk
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


module sampling_clk(
    input clk,
    input rst,
    input [19:0]sampling_period, // 1_048_575 clocks
    output reg sampling_signal
    );

    reg [19:0] clock_cnt;
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            sampling_signal <= 1'b0;
            clock_cnt <= 20'b0;
        end
        else begin
            if (clock_cnt < sampling_period) begin
                clock_cnt <= clock_cnt + 1;
                sampling_signal <= 0;
            end
            else begin
                clock_cnt <= 0;
                sampling_signal <= 1;
            end
        end
    end

endmodule
