%guia2 prolog 

nace(juan,perez,fecha(23,02,1990)).
nace(luz,vasquez,fecha(19,02,1973)).
nace(blas,cruz,fecha(18,11,1989)).
nace(alejandra,cornejo,fecha(30,10,1997)).
nace(fredy,alvarez,fecha(01,11,1997)).

% regla info

info:- write('nombre : '), read(X) ,nace(X,Y,fecha(D,M,A)), 
	   write(' edad deseada: ')	, read(E) , G is A+E , 
	   write('su edad actual es :') , H is 2017-A , write(H) , 
	   write('Le faltan ') , Z is ((12-M)+((E-H)*12)) , F is 30-D , write(Z) ,write(' meses con '),
       write(F),write(' dias para cumplir :') , write(E) , write(' anhos ').



?- info.
nombre : blas.
 edad deseada: |: 55.
su edad actual es :28Le faltan 325 meses con 12 dias para cumplir :55 anhos 
true.

?- blas.
ERROR: Undefined procedure: blas/0 (DWIM could not correct goal)
?- info.
nombre : luz.
 edad deseada: |: 60.
su edad actual es :44Le faltan 202 meses con 11 dias para cumplir :60 anhos 
true.

?- 