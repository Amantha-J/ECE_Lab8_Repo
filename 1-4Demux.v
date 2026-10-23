module Demux (
    input [3:0] In,
    input [1:0] Sel,
    input Enable,
    output [3:0]lib, fireDpt, school, ribShack
);

    assign lib = Enable ?(Sel == 'b00 ? In : 'b0000): 'b0000;
    assign fireDpt = Enable ?(Sel == 'b01 ? In : 'b0000): 'b0000;
    assign school = Enable ?(Sel == 'b10 ? In : 'b0000): 'b0000;
    assign ribShack = Enable ?(Sel == 'b11 ? In : 'b0000): 'b0000;

endmodule