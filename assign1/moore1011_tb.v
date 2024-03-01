module moore1011_tb;

reg clk, rst, in;
wire out;

moore1011 uut (
    .clk(clk),
    .rst(rst),
    .in(in),
    .out(out)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    in = 0;
    #10 rst = 0;

    #20 in = 1;
    #10 in = 0;
    #20 in = 1;
    #10 in = 0;
    #20 in = 1;
    #10 in = 0;
    #20 in = 1;
    #10 in = 0;
    #20 in = 1;

    #100 $stop;
end

endmodule