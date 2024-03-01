module counterab(
  input wire clk,
  output reg [3:0] aout,
  output reg [3:0] bout
);

  reg [3:0] counter_A;
  always @(posedge clk) begin
    if (counter_A == 4'b1100)
      counter_A <= 4'b0000;
    else
      counter_A <= counter_A + 1;
  end

  assign aout = counter_A;

  reg [3:0] counter_B;
  always @(posedge clk) begin
    if (counter_B == 4'b0000)
      counter_B <= 4'b1111;
    else
      counter_B <= counter_B - 1;
  end

  assign bout = counter_B;

  initial begin
    counter_A = 4'b0000;
    counter_B = 4'b1111;
  end

endmodule
