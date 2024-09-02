module master_ram(
    input             clk,
    input      [ 3:0] addr,
    input      [15:0] data,
    input             we,

    output reg [15:0] data00,
    output reg [15:0] data01,
    output reg [15:0] data02,
    output reg [15:0] data03,
    output reg [15:0] data04,
    output reg [15:0] data05,
    output reg [15:0] data06,
    output reg [15:0] data07,
    output reg [15:0] data08,
    output reg [15:0] data09,
    output reg [15:0] data10,
    output reg [15:0] data11,
    output reg [15:0] data12,
    output reg [15:0] data13,
    output reg [15:0] data14,
    output reg [15:0] data15
);

  reg [15:0]  mem [15:0];

  always @ (negedge clk) begin
    if (we)
      mem[0] <= mem[1];
      mem[1] <= mem[2];
      mem[2] <= mem[3];
      mem[3] <= mem[4];
      mem[4] <= mem[5];
      mem[5] <= mem[6];
      mem[6] <= mem[7];
      mem[7] <= mem[8];
      mem[8] <= mem[9];
      mem[9] <= mem[10];
      mem[10] <= mem[11];
      mem[11] <= mem[12];
      mem[12] <= mem[13];
      mem[13] <= mem[14];
      mem[14] <= mem[15];
      mem[15] <= data;
  end

  always @ (posedge clk) begin
      data00 <= mem[ 0];
      data01 <= mem[ 1];
      data02 <= mem[ 2];
      data03 <= mem[ 3];
      data04 <= mem[ 4];
      data05 <= mem[ 5];
      data06 <= mem[ 6];
      data07 <= mem[ 7];
      data08 <= mem[ 8];
      data09 <= mem[ 9];
      data10 <= mem[10];
      data11 <= mem[11];
      data12 <= mem[12];
      data13 <= mem[13];
      data14 <= mem[14];
      data15 <= mem[15];
  end
endmodule