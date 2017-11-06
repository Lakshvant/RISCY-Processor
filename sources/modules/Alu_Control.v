`timescale 1ns / 1ps

module alu_control(
    input      [31:0] instruction,
    input      [1:0]  ALUOp,

    output reg [5:0]  ALUFn
);

wire [5:0] fnField;
assign fnField = instruction[5:0];

always @(instruction)
    begin
              ALUFn = instruction[5:0];
        if (ALUOp == 2'b10)
            begin
             ALUFn = instruction[5:0];
            end
    end

endmodule