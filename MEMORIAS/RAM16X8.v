module ram_sincrona (
    input clk,
    input we,
    input [3:0] addr,
    input [7:0] din,
    output reg [7:0] dout
);
    // Definición de la memoria: 16 palabras de 8 bits
    reg [7:0] mem [0:15];

    always @(posedge clk) begin
        if (we)
            mem[addr] <= din; // Escritura
        else    
          dout <= mem[addr];    // Lectura
    end
endmodule