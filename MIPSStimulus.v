`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2017 16:44:13
// Design Name: 
// Module Name: MIPSStimulus
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

//Este modulo es el testbench del proyecto

module MIPSStimulus();
// fpga4student.com: FPGA projects, Verilog Projects, VHDL projects
// Verilog project: 32-bit 5-stage Pipelined MIPS Processor in Verilog 
// Testbench Verilog code for 32-bit 5-stage Pipelined MIPS Processor 
parameter ClockDelay = 5000;

reg clk,reset;


MIPSpipeline  myMIPS(clk, reset);
initial clk = 0;
   always #(ClockDelay/2) clk = ~clk; //Cada 2500 el clock va a estar cambiando

initial 
begin
   reset = 1; //Inicia con un reset igual a 1
  #(ClockDelay/4);
  reset = 0; //Despues del ClokDelay el reset pasa a ser 0
end
endmodule
