`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2017 15:31:24
// Design Name: 
// Module Name: zero_extend
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Módulo encargado de realizar la extensión de cero.
// 
//////////////////////////////////////////////////////////////////////////////////


module zero_extend(zOut32,zIn16);
output [31:0] zOut32;
input [15:0] zIn16;
assign zOut32 = {{16{1'b0}},zIn16};
endmodule
