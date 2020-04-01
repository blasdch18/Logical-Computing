% Caracteristicas adicionales

operaciones:- write('ingresa dos numeros: '), nl, read(X), nl, read(Y),
			  nl,Z is sqrt(X) , W is X/Y, write(Z) , tab(5), write(W).

% ejercicio 2

consulta:- write('ingresa el numero = ') , nl, read(N) , nl, M is N mod 2,
         (
         (M=:=0 , write('el numero '), write(N) , write(' es par '));
         write(' el nro no es par')
          ).

 % tiempo de servicio

servicio(cortiz, 15).
servicio(luz,9).
servicio(anita,11).
servicio(dugui,3).

% regla de ascenso

consulta2:-write('ingrese su apellido '), read(A), servicio(A,T) , Q is 10-T,
          (
           ( T>10, write(A) , write(' presente su solicitud '));
          (   write(' espere '), write(Q) ,write(' para anhos presentar su sol. '))               ).


%ejercicio 5

sueldo:-write('ingrese horas trabajadas'), read(H) , S is 15*H ,
       (
       	(H>20, H=<25, D is 0.1*S , write(' su descuento es '), write(D));
       		( 
       			(H>25 , D is 0.15*S, write(' su descuento es '), write(D));
       			write(' no tiene descuento ')
       		)
       	).





                                                             
