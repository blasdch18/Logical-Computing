%mostrar los n primeros impares 
% num_impar(n): mostrar n impares
num_impar(N):-P is 1,funcion(P,N).
funcion(X, N):-P is (X*2)-1, X1 is X+1,write(P),write(' , '),
									(X1=<N, funcion(X1, N)).


%mi horoscopo
horoscopo(aries,21,3,21,4).
horoscopo(tauro,21,4,21,5).
horoscopo(geminis,21,5,21,6).
horoscopo(cancer,21,6,21,7).
horoscopo(leo,21,7,21,8).
horoscopo(virgo,21,8,21,9).
horoscopo(libra,21,9,21,10).
horoscopo(escorpio,21,10,21,11).
horoscopo(sagitario,21,11,21,12).
horoscopo(capricornio,21,12,21,1).
horoscopo(acuario,21,1,21,2).
horoscopo(piscis,21,2,21,3).

%datos(id,nombre,fecha)
persona(001,mario,fecha(14,2,1996)).
persona(002,julian,fecha(21,8,1997)).
persona(003,elias,fecha(2,7,1996)).
persona(004,mariela,fecha(17,4,1996)).
persona(005,bertha,fecha(16,11,1991)).
persona(006,ana,fecha(19,5,1998)).
persona(007,pedro,fecha(24,4,1993)).
persona(008,simon,fecha(28,7,1999)).
persona(009,toreto,fecha(19,12,1995)).
persona(010,chuju,fecha(25,4,1995)).

signo_zodiaco:-write('dia:'),read(D),write('mes:'),read(M),persona(C,N,fecha(D,M,A)),
				write(N),write('->'),
									(
									horoscopo(signo,D1,M1,D2,M2),
									((M=M1, D>=D1) ; (M=M2, D=<D2)),write(signo)	
									).