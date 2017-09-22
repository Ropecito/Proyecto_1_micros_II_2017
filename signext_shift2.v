`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2017 15:37:52
// Design Name: 
// Module Name: signext_shift2
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

// Módulo para realizar la extensión de signo.
module signext_shift2(sOut32,sIn16);
output [31:0] sOut32;
input [15:0] sIn16;
assign sOut32 = {{16{sIn16[15]}},sIn16};
endmodule

// Módulo para realizar shift left
module shift_left_2(Out32, In32);
output [31:0] Out32;
input [31:0] In32;

assign Out32 = {In32[29:0],2'b00};
endmodule
