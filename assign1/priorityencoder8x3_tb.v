module priorityencoder8x3_tb;

reg en;
reg [7:0] in;
wire [2:0] out;

priorityencoder8x3 uut (
    .en(en),
    .in(in),
    .out(out)
);

initial begin
    en = 1;
    in = 8'b00000000;

    #10 in = 8'b00000001;
    #10 in = 8'b00000011;
    #10 in = 8'b00000111;
    #10 in = 8'b00001111;
    #10 in = 8'b00011111;
    #10 in = 8'b00111111;
    #10 in = 8'b01111111;
    #10 in = 8'b11111111;

    #10 en = 0;

    #10 in = 8'b01010101;

    #100 $stop;
end

endmodule
