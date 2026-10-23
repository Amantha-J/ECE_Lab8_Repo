module Mux (
    input [1:0] Sel,
    input [3:0]CEO, US, FRED, JILL, 
    input Enable,
    output [3:0]Y
);

    assign Y = Enable ? (Sel == 'b00 ? CEO :
                Sel == 'b01 ? US :
                 Sel == 'b10 ? FRED : JILL) : 'b0000;

endmodule