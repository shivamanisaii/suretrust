Verilog code
module moore1011(
    input clk, rst, in,
    output reg out
);
parameter s0 = 0, s1 = 1, s10 = 2, s101 = 3, s1011 = 4;
reg [2:0] PS, NS;

always @(posedge clk) begin
    if (rst == 1'b1) begin
        out <= 0;
        PS <= s0;
        NS <= s0;
    end
    else begin
        PS <= NS;
    end
end

always @(PS, in) begin
    case (PS)
        s0: begin
            out <= 0;
            NS <= in ? s1 : s0;
        end

        s1: begin
            out <= 0;
            NS <= in ? s1 : s10;
        end

        s10: begin
            out <= 0;
            NS <= in ? s101 : s0;
        end

        s101: begin
            out <= 0;
            NS <= in ? s1011 : s10;
        end

        s1011: begin
            out <= 1;
            NS <= in ? s1 : s0;
        end
        
default: begin
            NS <= s0;
            out <= 0;
        end
    endcase
end
endmodule
