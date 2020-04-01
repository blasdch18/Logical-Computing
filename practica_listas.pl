%juntar lista eliminar los q se repiten

sub(X,[X|_]):-!.
sub(X,[_|Y1]):-sub(X, Y1).

repetido([],[]):-!.
repetido([X|X1],Y1):-sub(X,X1),!,repetido(X1, Y1).
repetido([X|X1],[X|Y1]):-repetido(X1, Y1).

junta([],X,X).
junta(X,[],X).
junta([X|Y],Z,[X|W]):-junta(Y,Z,W).





%sumar los elementos de una lista numerica ingresada por teclado

suma([],0).
suma([X|Y],S):-suma(Y,Z) , S is X+Z.















