`timescale 1ns / 1ps

/* Modulo del mux 4x1 y declaraciones de
los puertos de acuerdo al diagrama*/ 

module PR1_5(
    input [1:0] s,
    input [3:0] i,
    output out
    );

//declaraciones de las conexiones internas.
wire s1n, s0n;
wire y0, y1, y2, y3;

// instanciación de compuertas
// Creacion de señales s0 y s1

not (s0n, s[0]);
not (s1n, s[1]);
//Instanciacion de compuertas 3_entradas

and (y0, i[0], s1n, s0n);
and (y1, i[1], s1n, s[0]);
and (y2, i[2], s[1], s0n);
and (y3, i[3], s[1], s[0]);

// instanciacion de OR 4_entradas
or (out, y0, y1, y2, y3);
endmodule

