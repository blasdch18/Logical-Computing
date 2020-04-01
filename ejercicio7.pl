
%ejercicio7


funcion:-write('Ingrese su numero :'),read(X),
(
(X<(-1) , F is (X*X - 2*X) , write('Ev='), write(F));
(X>=4 , X<9, F is sqrt(2*X - 8), write('Ev='), write(F));
(X>=10 , F is (4/(X*X) - X), write('Ev='), write(F))
);
write('no pertenece al dominio').       

/*
?- funcion.
Ingrese su numero :-2.
Ev=8
true .

?- funcion.
Ingrese su numero :5
|: .
Ev=1.4142135623730951
true .

?- funcion.
Ingrese su numero :11
|: .
Ev=-10.96694214876033
true .

?- funcion.
Ingrese su numero :0.
no pertenece al dominio
true.*/