module multiplier3x3(
  input [2:0] a,
  input [2:0] b,
  output reg [5:0] p
);

  function [2:0] adder(input [2:0] A, input [2:0] B);
    adder = A + B;
  endfunction

  // Function to shift a 3-bit number left by a given amount
  function [2:0] shift_left_3bit(input [2:0] A, input [2:0] amount);
    shift_left_3bit = A << amount;
  endfunction

  // Function to perform a 3x3 multiplication
  function [5:0] multi3x3(input [2:0] A, input [2:0] B);
    reg [5:0] result;
    result = 0;

    for (genvar i = 0; i < 3; i++) begin
      result = adder(result, shift_left_3bit(A * B[i], i));
    end

    multi3x3 = result;
  endfunction

  always @* begin
    // Calculate the 3x3 multiplication using the multi3x3 function
    p = multi3x3(a, b);
  end

endmodule
