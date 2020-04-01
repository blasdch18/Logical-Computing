descuento:- write('ingrese horas '), read(H), S1 is H*15 , write(S1),
(
	(H>20 ,H=<25 ,D is 0.1*S1 , write('Su descuento es ='),write(D));
(H>25 , D is 0.15*S1 , write('Su descuento es = '), write(D))
).