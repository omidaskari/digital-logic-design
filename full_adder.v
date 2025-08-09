// full_adder.v
// A single-bit full adder that sums two input bits (a, b) and a carry-in.
// The sum bit and carry-out are produced as outputs.

module full_adder(
    input  wire a,
    input  wire b,
    input  wire cin,
    output wire sum,
    output wire cout
);
    // Sum is the XOR of inputs and carry-in
    assign sum  = a ^ b ^ cin;
    // Carry-out is generated if any two of the inputs are 1
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule
