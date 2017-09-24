`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2017 16:02:49
// Design Name: 
// Module Name: JUMP_control
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

//Este modulo es la unidad de control de jump, es decir, si se cumple una condicion este haga un salto

module JUMP_control( JRControl, ALUOp, Function);
output JRControl;
reg JRControl;
input [1:0] ALUOp;
input [5:0] Function;
wire [7:0] test;
 assign test = {ALUOp,Function}; //Asigna en test como bits mas significativos los primeros 2 bit de ALUOp y como menos significativos los 6 bits de Fuction
always @(test)
case (test)
 8'b10001000 : JRControl=1'b1; //Si test es igual a esta condicion hay un salto de lo contrario no
 default: JRControl=1'b0;  //Condicion por default que solo cambia si se cumple la condicion
 endcase
endmodule
