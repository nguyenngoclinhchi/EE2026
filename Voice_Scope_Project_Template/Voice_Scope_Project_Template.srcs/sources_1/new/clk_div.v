`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2018 03:33:06 PM
// Design Name: 
// Module Name: clk_div
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


module clk_div(input clock, input [12:0] bound, output reg clk_20k = 0);
    reg [12:0] count = 0; 
    always @(posedge clock) begin
        count = (count == bound)? 0 : count + 1; 
        clk_20k = (count == 12'b0) ? ~clk_20k : clk_20k; 
    end 
endmodule
