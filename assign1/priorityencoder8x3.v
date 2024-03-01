module priorityencoder8x3(en, in, out);
  input en;
  input [7:0] in;
  output reg [2:0] out;

  always @(en, in) begin
    if (en == 1) begin
      if (in[7] == 1) out = 3'b111;
      else if (in[6] == 1) out = 3'b110;
      else if (in[5] == 1) out = 3'b101;
      else if (in[4] == 1) out = 3'b100;
      else if (in[3] == 1) out = 3'b011;
      else if (in[2] == 1) out = 3'b010;
      else if (in[1] == 1) out = 3'b001;
      else out = 3'b000;
    end
    // if enable is zero, output is at high impedance.
    else out = 3'bzzz;
  end
endmodule
