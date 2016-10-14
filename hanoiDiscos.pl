hanoi(N, Solucion):-mover(N, 1, 3, 2, Solucion).
mover(0, _, _, _, []):-!.
mover(N, Origen, Paso, Destino, Solucion):-N1 is N-1,mover(N1, Origen, Destino, Paso, Solucion1),Original is N1 + 1,append(Solucion1,[[Original,Paso]], Solucion2),mover(N1, Destino, Paso, Origen, Solucion3),append(Solucion2, Solucion3, Solucion).