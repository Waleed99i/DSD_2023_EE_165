`timescale 1ns/10ps 

module lab_03_tb();
    logic a1;      // Input signal
    logic b1;      // Input signal
    logic c1;      // Input signal
    logic x1;      // Output signal
    logic y1;      // Output signal

    // Instantiate the Unit Under Test (UUT)
    lab_03 uut (
        .a(a1),
        .b(b1),
        .c(c1),
        .x(x1),
        .y(y1)
    );

    initial begin
        $display("Simulation started...");
        a1 = 0; b1 = 0; c1 = 0;
        #10;
        a1 = 0; b1 = 0; c1 = 1;
        #10;
        a1 = 0; b1 = 1; c1 = 0;
        #10;
        a1 = 0; b1 = 1; c1 = 1;
        #10;
        a1 = 1; b1 = 0; c1 = 0;
        #10;
        a1 = 1; b1 = 0; c1 = 1;
        #10;
        a1 = 1; b1 = 1; c1 = 0;
        #10;
        a1 = 1; b1 = 1; c1 = 1;
        #10;
        $stop;
    end 

    initial begin
        $monitor("x=%b, y=%b, a=%b, b=%b, c=%b", x1, y1, a1, b1, c1);
    end
endmodule
