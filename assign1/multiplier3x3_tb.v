module multiplier3x3_tb;

reg [2:0] a, b;
wire [5:0] p;

multiplier3x3 uut (
  .a(a),
  .b(b),
  .p(p)
);

initial begin
  a = 3'b001;
  b = 3'b010;

  #10 a = 3'b010;
  #10 b = 3'b100;

  #10 a = 3'b111;
  #10 b = 3'b001;

  #100 $stop;
end

endmodule
