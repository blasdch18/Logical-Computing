

%Listas 

cursos([ algebra , discretas1 , discretas2 , numerico , logica ]).

profesores([ cortiz , duggy , ern , alex , tavo , luz , jessy , beto , paz , rensso , aquise , memo , coco , castelo  ]).

%predicados

primero([X|_],X).

cola([X|Y],Y).   %cola([_|Y],Y).

%compare([X|Y],X\=Y).

compare([X|[X|_]]).

%1 buscar si un elemento pertenece a una lista .
%regla: buscar(lista,valor).
buscar([X|_],X).   %analisis de la cabeza 
buscar([_|Y],X):-buscar(Y,X).

%longitud de lista

size([],0).
size([X|Y],N):-size(Y,N1) ,  N is N1+1 .


longitud([],X):-write('La longitud de la lista es ... '), write(X).

longitud([_|Y],L):-L1 is L+1 , longitud(Y,L1) .
longi(X):-longitud(X,0).

%==========================================================================

%eliminar un elemento de la lista
%elimina(a,b,c):eliminar a de la lista b y mostrar la lista c

elimina(X,[X|Y],Y).
elimina(X,[Y|Z],[Y|W]):-elimina(X,Z,W).


%juntar dos Listas
%junta(a,b,c):la lista a se junta con la lista b y muestra  la lista c


junta([],X,X).
junta(X,[],X).
junta([X|Y],Z,[X|W]):-junta(Y,Z,W).


%imprimr elementos de una lista
%imprime(a):se imprime  los eleementos de la lista a
 
imprime([]).
imprime([X|Y]):-write(X),tab(3),imprime(Y).

%==========================================================================

%sumar los elemntos de una lista

suma([],0).
suma([X|Y],S):-suma(Y,Z) , S is X+Z.

%contar el numero de veces q aaparece un elemento en una lista

aparece([],R,M).
aparece([X|Y],R,M):-aparece(Y,R,M1), (X=M , R is M1+1 , M is M1). 