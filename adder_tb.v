// adder_tb.v
// Testbench for the 4-bit ripple-carry adder.

`timescale 1ns/1ps

module adder_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg       cin;
    wire [3:0] sum;
    wire       cout;

    // Instantiate the adder
    adder uut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Test different combinations of inputs
    initial begin
        $display("Time\ta\tb\tcin\tsum\tcout");
        cin = 0;
        a = 4'b0000; b = 4'b0000; #10;
        $display($time, "\t%4b\t%4b\t%b\t%4b\t%b", a, b, cin, sum, cout);
        a = 4'b0011; b = 4'b0101; #10;
        $display($time, "\t%4b\t%4b\t%b\t%4b\t%b", a, b, cin, sum, cout);
        a = 4'b1111; b = 4'b0001; #10;
        $display($time, "\t%4b\t%4b\t%b\t%4b\t%b", a, b, cin, sum, cout);
        a = 4'b1010; b = 4'b0110; cin = 1'b1; #10;
        $display($time, "\t%4b\t%4b\t%b\t%4b\t%b", a, b, cin, sum, cout);
        $finish;
    end
endmodule
