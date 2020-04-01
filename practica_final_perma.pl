potencia(A,0,1):-A=\=0.
potencia(X,Y,Z):-A is Y-1 ,potencia(X,A,B),Z is B*X.


%hallar la suma de i*(2^i)  para un  i=1 hasta un valor x=n (n ingreado por teclado).



sumaEnteros(N,Sum):-sumaEnteros(N,0,Sum). 
sumaEnteros(N,I,0):-I>=N,!. 
sumaEnteros(N,I,Sum):- potencia(2,N,P) ,Sum is I*P, N1 is N-1, N1==0,
(
	(sumaEnteros(N1,I,Sum));
);

