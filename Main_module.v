`timescale 1ns / 1ps

module Main_Module(input clkin,clr,output [2:0]result);
wire cp,ep,lm,ce,li,ei,la,ea,su,eu,lb,lo;
wire [7:0]bus = 8'bzzzzzzzz;
wire [3:0]out;
wire [7:0]reg_B;
wire [3:0]i_reg;
wire [7:0]Add;



control_Unit C(.ireg(i_reg), .clk(clkin), .clr(clr), .cp(cp),.ep(ep),.lm(lm),.ce(ce),.li(li),.ei(ei),.la(la),.ea(ea),.su(su),.eu(eu),.lb(lb),.lo(lo) );
pc P ( .cp(cp),.ep(ep),.clk(clkin),.clr(clr),.count(bus[3:0]) );
MAR M ( .address_val(bus[3:0]) ,.clk(clkin),.lm(lm),.address(out) );
Ram R ( .address(out),.ce(ce), .data_out(bus));
Instruction_register I (.val(bus),.clk(clkin),.li(li), .ei(ei), .instruction(i_reg), .address(bus[3:0]));
Accumulator A( .clk(clkin),.la(la),.ea(ea),.datain(bus),.dataout(bus),.dataAdd(Add));
Reg_B Rb( .A(bus) ,.clk(clkin),.lb(lb),.out(reg_B) );
Add_Sub AS ( .A(Add),.B(reg_B) ,.su(su), .eu(eu) ,.S(bus));
Output_Reg O( .val(Add), .clk(clkin), .lo(lo),.out(result) );

endmodule
