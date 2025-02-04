
module design_file(
    input a,
    input b,
    input c,
    output x,
    output y
    );
    assign or_out = a | b;
    assign x = (~c) ^ or_out;
    assign xor_out = (~(a & b)) ^ (or_out);
    assign y = or_out & xor_out;
endmodule
