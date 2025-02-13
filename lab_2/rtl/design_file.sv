`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: uet lahore
// Engineer: waleed akram
// 
// Create Date: 02/01/2025 12:47:51 AM
// Design Name: 
// Module Name: design_file
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



module design_file(
    output x,y,
    input a,b,c
    );
    
    assign x = ~c ^ (a | b);
    assign y = (~(a & b) ^ (a | b)) & (a | b); 
endmodule
