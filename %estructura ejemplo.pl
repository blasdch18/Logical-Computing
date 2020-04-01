%estructura ejemplo
/*%datos(c,fecha(d,m,a),b) :codigo c y fecha de ingreso al trabajo , 
						  cargo b
*/
datos(001,fecha(10,10,2000),secretario).
datos(002,fecha(20,10,2005),gerente).
datos(003,fecha(01,10,2015),asistente).

%empleado(nombre(n,a),c) : nombre del empleado codigo c 

empleado(nombre(luis,suarez),13345).
empleado(nombre(jose,alvarez),13346).
empleado(nombre(francisco,marin),13347).
empleado(nombre(blas,cruz),13348).

id(X,Y):-empleado(nombre(_,X),Y).
info:-write('codigo '),read(C),id(X,C),
		(
		write('edad '),read(E),T is 70-E,
		M is 800*T ,write(X),tab(3),write('le faltan '),write(T),
		write(' años para jubilarse '),
		write('y recibir '),write(M));
		(write('no es empleado de la empresa')
		).

%arbol genealogico hijo(a,b) : a es hijo de b. 

%recursividad
 
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


%des(X,Y): x es un descendiente de y .

des(X,Y):-hijo(X,Y). %caso base.
des(X,Y):-hijo(X,Z),des(Z,Y).   	%caso recursivo

%mostrar los enteros desde m hasta n 
muestra(M,N):- M==N.
muestra(M,N):- M<N , write(M) , M1 is M+1,muestra(M1,N).

