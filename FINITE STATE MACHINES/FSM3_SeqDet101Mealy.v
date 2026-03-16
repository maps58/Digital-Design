`timescale 1ns / 1ps

module SeqDet101Mealy(
    input clk,
    input rst,
    input inp,
    output reg outp
);

reg [1:0] estado_pres, estado_sig;

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;

always @(posedge clk or posedge rst)
begin
    if (rst)
        estado_pres <= S0;
    else
        estado_pres <= estado_sig;
end

always @(*)
begin
    case(estado_pres)
        S0:
        begin
            if (inp) begin
                estado_sig = S1; outp = 0;
            end
            else begin
                estado_sig = S0; outp = 0;
            end
        end

        S1:
        begin
            if (!inp) begin
                estado_sig = S2; outp = 0;
            end
            else begin
                estado_sig = S1; outp = 0;
            end
        end

        S2:
        begin
            if (inp) begin
                estado_sig = S1; 
                outp = 1;   // detección 101 con overlapping
            end
            else begin
                estado_sig = S0; 
                outp = 0;
            end
        end
    endcase 
    end
endmodule