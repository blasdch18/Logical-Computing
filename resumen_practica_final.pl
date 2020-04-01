%                            		Resumen 

% Estructuras ejemplo
%		datos(c,fecha(d,m,a),b) : codigo c y fecha de ingreso al trabajo , cargo b

datos(001,fecha(10,10,2000),secretario).
datos(002,fecha(20,10,2005),gerente).
datos(003,fecha(01,10,2015),asistonto).

%		empleado(nombre(n,a),c) : nombre del empleado codigo c

empleado(nombre(luis,suarez),13345).
empleado(nombre(jose,alvarez),13346).
empleado(nombre(francisco,marin),13347).
empleado(nombre(blas,cruz),13348).

id(X,Y):-empleado(nombre(_,X),Y).
info:-write('codigo'),read(C),id(X,C),
		(
			write('edad'),read(E),T is 70-E,
			M is 800*T ,write(X),tab(3),write('le faltan'),write(T),
			write(' años para jubilarse '),
			write(' y recibir '),write(M));
			(write('no es empleado de la empresa')
		).

%			arbol genealogico hijo(a,b) : a es hijo de b .

% recursividad 

hijo(b,a).
hijo(c,a).

hijo(d,b).
hijo(e,b).

hijo(g,c).

hijo(h,d).
hijo(j,d).

hijo(f,e).

hijo(q,p).
hijo(r,q).
hijo(m,q).

%descendiente(X,Y): x es un descendiente de y .

des(X,Y):-hijo(X,Y).  %caso base
des(X,Y):-hijo(X,Z),des(Z,Y).   %caso recursivo

%mostrar los enteros desde m hasta n 
muestra(M,N):-M==N.
muestra(M,N):-M<N,write(M),M1 is M+1,muestra(M1,N).

%		hallar la suma de x+x2  para un  x=1 hasta un valor x=n (n ingreado por teclado).

funcion:-write('Ingrese su numero :'),read(X),
(
	(X<(-1) , F is (X*X - 2*X) , write('Ev='), write(F)); 		% f(x)=x^2-2x
	(X>=4 , X<9, F is sqrt(2*X - 8), write('Ev='), write(F));	% f(x)=(2x-8)^1/2
	(X>=10 , F is (4/(X*X) - X), write('Ev='), write(F))		% f(x)=(4/x^2 )- x
);
write('no pertenece al dominio').

%		Listas 

cursos([algebra ,discretas1.discretas2,discretas3,numerico,logica]).
profes([cortiz , duggy  ,ern , tavo , luz ,jessy]).

%predicados 

primero([X|_],X).

cola([X|Y],Y).

compare([X|[X|_]]).

%1 buscar si un elemento pertenece a una lista .
%regla: buscar(lista,valor).
buscar([X|_],X).   %analisis de la cabeza 
buscar([_|Y],X):-buscar(Y,X).	

%longitud de lista

size([],0).
size([X|Y],N):-size(Y,N1) ,  N is N1+1 .

%eliminar un elemento de la lista
%elimina(a,b,c):eliminar a de la lista b y mostrar la lista c

elimina(X,[X|Y],Y).
elimina(X,[Y|Z],[Y|W]):-elimina(X,Z,W).

%juntar dos Listas
%junta(a,b,c):la lista a se junta con la lista b y muestra  la lista c


junta([],X,X).
junta(X,[],X).
junta([X|Y],Z,[X|W]):-junta(Y,Z,W).
