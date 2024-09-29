`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 18:40:06
// Design Name: 
// Module Name: syncCounter
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


module syncCounter(
input clk,
output[3:0]q);
wire[3:0]d;
Dff ff0(.clk(clk),.d(~q[0]),.q(q[0]));
Dff ff1(.clk(clk),.d(q[0]^q[1]),.q(q[1]));
Dff ff2(.clk(clk),.d(q[1]^q[2]),.q(q[2]));
Dff ff3(.clk(clk),.d(q[2]^q[3]),.q(q[3]));
endmodule
