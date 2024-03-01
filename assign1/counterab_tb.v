module counterab_tb;

  reg clk;
  reg [3:0] aout_tb;
  reg [3:0] bout_tb;

  counterab uut (
    .clk(clk),
    .aout(aout_tb),
    .bout(bout_tb)
  );

  initial begin
    clk = 0;
    #10 clk = 1;
    #10 clk = 0;
    #10 clk = 1;
    #10 clk = 0;
    #10 clk = 1;
    #10 clk = 0;
    #10 $stop;
  end

endmodule
