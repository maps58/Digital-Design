module PP1_2(
    input [2:0] s,
    input [7:0] i,
    output out
    );

//declaraciones de las conexiones internas.
wire s2n,s1n, s0n;
wire y7, y6, y5, y4, y3, y2, y1, y0;

// instanciación de compuertas
// Creacion de las señales negadas de s0  y s1

not (s0n, s[0]);
not (s1n, s[1]);
not (s2n, s[2]);
//Instanciacion de compuertas 3_entradas

and (y0, i[0], s2n, s1n, s0n);
and (y1, i[1], s2n, s1n, s[0]);
and (y2, i[2], s2n, s[1], s0n);
and (y3, i[3], s2n, s[1], s[0]);
and (y4, i[4], s[2], s1n, s0n);
and (y5, i[5], s[2], s1n, s[0]);
and (y6, i[6], s[2], s[1], s0n);
and (y7, i[7], s[2], s[1], s[0]);

// instanciacion de OR 4_entradas
or (out, y7, y6, y5, y4, y3, y2, y1, y0);
endmodule

