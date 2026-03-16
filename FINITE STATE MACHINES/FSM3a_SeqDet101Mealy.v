`timescale 1ns / 1ps


module SeqDet101Mealy_OutReg(
    input clk,
    input rst,
    input inp,
    output reg outp
);

reg [1:0] estado_pres, estado_sig;
reg outp_sig;

/* Codificación de estados */

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;


/* Registro de estado */

always @(posedge clk or posedge rst)
begin
    if (rst)
        estado_pres <= S0;
    else
        estado_pres <= estado_sig;
end


/* Registro de salida */

always @(posedge clk or posedge rst)
begin
    if (rst)
        outp <= 0;
    else
        outp <= outp_sig;
end


/* Lógica combinacional */

always @(*)
begin

    estado_sig = estado_pres;
    outp_sig = 0;

    case(estado_pres)

        S0:
        begin
            if (inp)
                estado_sig = S1;
        end

        S1:
        begin
            if (!inp)
                estado_sig = S2;
        end

        S2:
        begin
            if (inp) begin
                estado_sig = S1;
                outp_sig = 1;   // detección de 101
            end
            else
                estado_sig = S0;
        end

    endcase

end
endmodule