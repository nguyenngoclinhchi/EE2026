`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2018 04:11:12 PM
// Design Name: 
// Module Name: TestWave_gen
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


module TestWave_gen(input clock_sample, output reg [9:0] wave_sample);
    reg [9:0] i; 
    
    always @ (posedge clock_sample) begin
        i = (i == 10'd639)? 0 : i + 1; 
        wave_sample <= i; 
    end
endmodule
