%Recursividad

hijo(b,a).
hijo(c,a).
hijo(d,b).
hijo(e,b).
hijo(h,d).
hijo(j,d).
hijo(f,e).
hijo(g,c).
hijo(q,p).
hijo(r,q).
hijo(m,q).

%descendiente(x,y) : x es descendiente de y

%paso base
desc(X,Y):- hijo(X,Y).

%paso recursivo 
desc(X,Y):- hijo(X,Z) , desc(Z,Y).

%mostrar los enteros desde m hasta n 
muestra(M,N):- M==N.
muestra(M,N):- M<N , write(M) ,tab(1) , M1 is M+1,muestra(M1,N).

%mostrar producto de los n primeros enteros positivos
%prod(X):- Y is 1.
prod(X):- write(X) , tab(1)  , X1 is X-1 , Y1 is X1*X ,X1>0, prod(Y1).