%Eliminar todos los elementos de la lista 1 que están en la lista 2.

sub(X,[X|_]):-!.
sub(X,[_|Y1]):-sub(X, Y1).

elimina(_,[],[]):-!.
elimina(Y,[X|X1],Z):-sub(X,Y),!,elimina(Y,X1,Z).
elimina(Y,[X|X1],[X|Z1]):-elimina(Y,X1,Z1).

%Eliminar todos los elementos que se repitan en una lista

repetido([],[]):-!.
repetido([X|X1],Y1):-sub(X,X1),!,repetido(X1, Y1).
repetido([X|X1],[X|Y1]):-repetido(X1, Y1).