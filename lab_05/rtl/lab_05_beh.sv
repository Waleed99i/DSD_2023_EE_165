`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: uet lahore
// Engineer: WALEED AKRAM
// 
// Create Date: 02/26/2025 06:11:05 PM
// Design Name: 
// Module Name: lab_05_beh
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module lab_05_beh(
    input logic [3:0] num,   // 4-bit input number
    input logic [2:0] sel,   // 3-bit selector for the display
    output logic A, B, C, D, E, F, G, DP, // Segment outputs
    output logic [7:0] AN    // Anode outputs
    );

    // Always block to drive the segment outputs based on the input number
    always_comb begin
        DP = 1; // Set the decimal point to off by default
        case(num)
            4'b0000 : {A,B,C,D,E,F,G} = 7'b0000001; // 0
            4'b0001 : {A,B,C,D,E,F,G} = 7'b1001111; // 1
            4'b0010 : {A,B,C,D,E,F,G} = 7'b0010010; // 2
            4'b0011 : {A,B,C,D,E,F,G} = 7'b0000110; // 3
            4'b0100 : {A,B,C,D,E,F,G} = 7'b1001100; // 4
            4'b0101 : {A,B,C,D,E,F,G} = 7'b0100100; // 5
            4'b0110 : {A,B,C,D,E,F,G} = 7'b0100000; // 6
            4'b0111 : {A,B,C,D,E,F,G} = 7'b0001111; // 7
            4'b1000 : {A,B,C,D,E,F,G} = 7'b0000000; // 8
            4'b1001 : {A,B,C,D,E,F,G} = 7'b0000100; // 9
            4'b1010 : {A,B,C,D,E,F,G} = 7'b0001000; // A
            4'b1011 : {A,B,C,D,E,F,G} = 7'b1100000; // B
            4'b1100 : {A,B,C,D,E,F,G} = 7'b0110001; // C
            4'b1101 : {A,B,C,D,E,F,G} = 7'b1000010; // D
            4'b1110 : {A,B,C,D,E,F,G} = 7'b0110000; // E
            4'b1111 : {A,B,C,D,E,F,G} = 7'b0111000; // F
            default : {A,B,C,D,E,F,G} = 7'b1111111; // Default case (all segments off)
        endcase
    end

    // Always block to drive the anode outputs based on the selector
    always_comb begin
        case(sel)
            3'b000 : AN = 8'b11111110; // Select first display
            3'b001 : AN = 8'b11111101; // Select second display
            3'b010 : AN = 8'b11111011; // Select third display
            3'b011 : AN = 8'b11110111; // Select fourth display
            3'b100 : AN = 8'b11101111; // Select fifth display
            3'b101 : AN = 8'b11011111; // Select sixth display
            3'b110 : AN = 8'b10111111; // Select seventh display
            3'b111 : AN = 8'b01111111; // Select eighth display
            default : AN = 8'b11111111; // Default case (all displays off)
        endcase
    end
endmodule
