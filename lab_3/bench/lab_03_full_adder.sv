module full_adder_tb();
    logic a1;      // Input a
    logic b1;      // Input b
    logic c1;      // Input carry-in
    logic sum1;    // Output sum
    logic carry1;  // Output carry

    // Instantiate the full adder
    full_adder UUT (
        .a(a1),
        .b(b1),
        .c(c1),
        .sum(sum1),
        .carry(carry1)
    );

    initial begin
        // Provide different combinations of the inputs to check validity of code
        a1 = 0; b1 = 0; c1 = 0;  // Test case 1
        #10;
        a1 = 0; b1 = 0; c1 = 1;  // Test case 2
        #10;
        a1 = 0; b1 = 1; c1 = 0;  // Test case 3
        #10;
        a1 = 0; b1 = 1; c1 = 1;  // Test case 4
        #10;
        a1 = 1; b1 = 0; c1 = 0;  // Test case 5
        #10;
        a1 = 1; b1 = 0; c1 = 1;  // Test case 6
        #10;
        a1 = 1; b1 = 1; c1 = 0;  // Test case 7
        #10;
        a1 = 1; b1 = 1; c1 = 1;  // Test case 8
        #10;
        $stop;  // Stop the simulation
    end
endmodule