`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: uet lahore
// Engineer: waleed akram
// 
// Create Date: 02/12/2025 02:03:31 PM
// Design Name: 
// Module Name: lab_02
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


module lab_02( 
    output x,y,
    input a,b,c
    );
    
    assign x = ~c ^ (a | b);
    assign y = (~(a & b) ^ (a | b)) & (a | b); 
endmodule