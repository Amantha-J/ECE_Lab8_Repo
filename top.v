module top (
    input [15:0] sw,
    input btnC, btnU, btnL, btnR, btnD,
    output [15:0] led
);

    wire transfer [3:0];
   
    
    wire [1:0] concat;
    wire [1:0] concat2;
    assign concat = {btnU, btnL};
    assign concat2 = {btnR, btnD};
    
    Mux mux (
        .Sel(concat),
        .CEO(sw[3:0]),
        .US(sw[7:4]),
        .FRED(sw[11:8]),
        .JILL(sw[15:12]),
        .Enable(btnC)
    );
    
    
    
    Demux demux (
        .In(mux.Y), 
        .Sel(concat2),
        .Enable(btnC),
        .lib(led[3:0]),
        .fireDpt(led[7:4]),
        .school(led[11:8]),
        .ribShack(led[15:12])
    );

endmodule