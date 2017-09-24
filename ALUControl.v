`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2017 15:59:03
// Design Name: 
// Module Name: ALUControl
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

//Este modulo es la unidad de control de la ALU.

module ALUControl(ALUControl, ALUOp, Function);
output [1:0] ALUControl;
reg [1:0] ALUControl;
input [1:0] ALUOp;
input [5:0] Function;
wire [7:0] ALUControlIn;
 assign ALUControlIn = {ALUOp,Function}; //Asigna a ALUControlIn los 2 bits de ALUOp seguido de los 6 bits de Function.
always @(ALUControlIn)
 casex (ALUControlIn) //En este case dependiendo de lo que se encuentre en ALUControlIn, pone en ALUControl cierto valor.
  8'b11xxxxxx: ALUControl=2'b01; //En los primeros 3 caso, el valor importante es el de ALUOp y el de Function se encuentra en estado no importa
 8'b00xxxxxx: ALUControl=2'b00;
 8'b01xxxxxx: ALUControl=2'b10;
 8'b10100000: ALUControl=2'b00; //En los siguientes 3 casos, si ALUOp es igual a 10, revisa el valor que se encuentra en Fuction
 8'b10100010: ALUControl=2'b10;
 8'b10101010: ALUControl=2'b11;
 default: ALUControl=2'b00; //Es el valor default de ALUControl
 endcase
endmodule
