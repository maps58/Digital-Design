`timescale 1ns / 1ps

module rom (
    input [3:0] addr,
    output reg [7:0] data
);
    // 1. Declarar la memoria: 16 palabras de 8 bits
    reg [7:0] rom [0:15];
    
    initial begin
    rom[0] = 8'hFF;
    rom[1] = 8'hEE;
    rom[2] = 8'hDD;
    rom[3] = 8'hCC;
    rom[4] = 8'hBB;
    rom[5] = 8'hAA;
    rom[6] = 8'h99;
    rom[7] = 8'h88;
    rom[8] = 8'h77;
    rom[9] = 8'h66;
    rom[10] = 8'h55;
    rom[11] = 8'h44;
    rom[12] = 8'h33;
    rom[13] = 8'h22;
    rom[14] = 8'h11;
    rom[15] = 8'h00;
end
     // 3. Lógica de lectura
    always @(*) begin
        data = rom[addr];
    end
endmodule