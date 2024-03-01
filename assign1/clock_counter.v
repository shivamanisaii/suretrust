module clock_counter(
  output reg clk,
  output reg [31:0] count
);

  reg [31:0] timer;
  parameter clock_period = 100; 
  parameter duty_cycle_percentage = 30;
  parameter time_duration = 1000000;

  always @(posedge clk or negedge clk) begin
    if (timer >= time_duration) begin
      count <= count + 1;
      timer <= 0;
    end else begin
      timer <= timer + clock_period;
    end
  end

  initial begin
    clk = 0;
    count = 0;
  end

  always #((clock_period * duty_cycle_percentage) / 100) 
clk = ~clk;

endmodule
