`timescale 1ns / 1ps



module addr_cnt(
    input clk,
    input rst,
    input clk_in,
    output reg [3:0] addr
    );

    always @(posedge clk, posedge rst) begin
        if (rst) begin
            addr <= 0;
        end
        else begin
            if (clk_in)
            addr <= addr + 1; // 0 ~ 15
        end
    end

endmodule
