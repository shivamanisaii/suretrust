module clock_counter_tb;

  reg clk;
  reg [31:0] count;

  clock_counter uut (
    .clk(clk),
    .count(count)
  );

  initial begin
    $dumpfile("waveforms.vcd");
    $dumpvars(0, clock_counter_tb);

    #10;

    repeat (100) begin
      #5 clk = ~clk;
    end

    #10;

    $finish;
  end

endmodule
