`timescale 1ns / 1ps



module clock_div(
    input clk,
    input rst,
    output clk_out,
    output clk_half,
    output clk_quater    );

    reg [1:0] cnt;
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            cnt <= 2'b0;
        end
        else begin
            cnt <= cnt + 1;
        end
    end
    assign clk_out = clk;
    assign clk_half = cnt[0];
    assign clk_quater = cnt[1];

endmodule
