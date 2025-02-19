`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UET LAHORE
// Engineer: WALEED AKRAM
// 
// Create Date: 02/19/2025 05:28:17 PM
// Design Name: 
// Module Name: lab_04_RGB
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


module lab_04_RGB(
    input wire [1:0] a, 
    input wire [1:0] b,
    output reg red, 
    output reg green, 
    output reg blue
);

always @* begin
    red = ((~b[0]) & (~b[1])) | ((a[0]) & (a[1])) | ((a[0]) & (~b[1])) | ((a[1]) & (~b[1])) | ((a[1]) & (~b[0]));
    green = ((~a[0]) & (~a[1])) | ((b[0]) & (~a[1])) | ((b[1]) & (b[0])) | ((~a[0]) & (b[1])) | ((b[1]) & (~a[1]));
    blue = (a[1] ^ b[1]) | (a[0] ^ b[0]);
end

endmodule