%reglas de hermano(a),hijo(a)
varon(francisco).
varon(mario).
varon(eduardo).
varon(luis).
mujer(victoria).
mujer(alicia).
mujer(veronica).
mujer(beatriz).
esposos(francisco,victoria).
esposos(mario,alicia).
esposos(eduardo,veronica).
padres(francisco,victoria,alicia).
padres(francisco,victoria,eduardo).
padres(mario,alicia,beatriz).
padres(eduardo,veronica,luis).

%regla hermano (a,b):a es hermano de b
hermano(X,Y):-padres(A,B,X),padres(A,B,Y),esposos(A,B),varon(X),X\=Y.

%regla hijos (a,b): a es el hijo de b 
hijo(X,Y):-(padres(A,Y,X);padres(Y,B,X)),varon(X).

%regla primos (a,b): a es el primo de b
primo(X,Y):-(padres(A,C,X);padres(C,A,X)),
			(padres(B,D,Y);padres(D,B,Y)),
			(hermano(A,B);hermano(B,A)),varon(Y).

%regla primos (a,b): a es el primo de b
prima(X,Y):-(padres(A,C,X);padres(C,A,X)),
			(padres(B,D,Y);padres(D,B,Y)),
			(hermano(A,B);hermano(B,A)),mujer(Y).
		
%listado de personas por su edad
id(luis,23).
id(anibal,23).
id(renzo,20).
id(wilbert,20).
id(yeroen,24).
id(alexandra,10).

%regla que muestre a todos los mayores de edad 

edad(X):-id(X,Y),Y>17.
edad2:-id(X,Y),Y>17,write('los losers mayores de edad son '), nl ,
		id(X,Y),Y>17,write(X).

%si no hay consulta a la base de datos
edad3:-write('ingrese un nombre'),read(X),write('tu edad es'),		
	read(E),(E>17,write(X),write(' puedes votar');write('no puede votar')).