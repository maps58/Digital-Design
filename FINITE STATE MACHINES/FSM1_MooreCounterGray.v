module fsm_GrayCounter4bits (
    input clk,
    input reset,
    output reg [3:0] GrayCount
);
    // Codificación del estado
    parameter S0 = 4'b0000;
    parameter S1 = 4'b0001;
    parameter S2 = 4'b0011;
    parameter S3 = 4'b0010;
    parameter S4 = 4'b0110;
    parameter S5 = 4'b0111;
    parameter S6 = 4'b0101;
    parameter S7 = 4'b0100;
    parameter S8 = 4'b1100;
    parameter S9 = 4'b1101;
    parameter S10 = 4'b1111;
    parameter S11 = 4'b1110;
    parameter S12 = 4'b1010;
    parameter S13 = 4'b1011;
    parameter S14 = 4'b1001;
    parameter S15 = 4'b1000;


    reg [3:0] state, next_state;

    // Bloque secuencial: Transicion de Estado
    always @(posedge clk or posedge reset) begin
        if (reset) state <= S0;
        else state <= next_state;
    end

    // Lógica combinacioal: Lógica del siguiente estado
    always @(*) begin
        case (state)
            S0: next_state = S1;
            S1: next_state = S2;
            S2: next_state = S3;
            S3: next_state = S4; 
            S4: next_state = S5;
            S5: next_state = S6;
            S6: next_state = S7;
            S7: next_state = S8; 
            S8: next_state = S9;
            S9: next_state = S10;
            S10: next_state = S11;
            S11: next_state = S12; 
            S12: next_state = S13;
            S13: next_state = S14;
            S14: next_state = S15;
            S15: next_state = S0; 
            default: next_state = S0;
        endcase
    end

    // Lógica de salida: (Moore: Logica basada unicamente en el estado actual)
    always @(*) begin
        case (state)
            S0: GrayCount = 4'b0000;
            S1: GrayCount = 4'b0001;
            S2: GrayCount = 4'b0011;
            S3: GrayCount = 4'b0010;
            S4: GrayCount = 4'b0110;
            S5: GrayCount = 4'b0111;
            S6: GrayCount = 4'b0101;
            S7: GrayCount = 4'b0100;
            S8: GrayCount = 4'b1100;
            S9: GrayCount = 4'b1101;
            S10: GrayCount = 4'b1111;
            S11: GrayCount = 4'b1110;
            S12: GrayCount = 4'b1010;
            S13: GrayCount = 4'b1011;
            S14: GrayCount = 4'b1001;
            S15: GrayCount = 4'b1000;
            default: GrayCount = 4'b0000;
        endcase
    end

endmodule
