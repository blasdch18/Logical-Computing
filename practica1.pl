% 1.-hechos : padre , madre , varon , mujer.

varon(luis).
varon(cristian).
varon(michael).
varon(peter).
varon(matias).
varon(tonny).

mujer(irma).
mujer(karelia).
mujer(cinthia).
mujer(valeria).

padre(luis,michael).
padre(luis,karelia).
padre(luis,cinthia).
padre(cristian, matias).
padre(peter,valeria).
padre(peter,tonny).

madre(irma,karelia).
madre(irma,michael).
madre(irma,cinthia).
madre(karelia,matias).
madre(cinthia,valeria).
madre(cinthia,tonny).

%    A.-regla abuelo (a,b) : a es el abuelo de b.
abuelo_(X,Y):-padre(X,A),padre(A,Y),varon(A).

%    B.-regla mismos padre (a,b) : a y b tienen los mismo padres.
mismos(X,Y):-padre(A,X),padre(A,Y) ,X\=Y,Y\=X.

%2sintoma_de(x,y):x es es sintoma de y 
sintoma_de(fiebre,gripe).
sintoma_de(flema,gripe).
sintoma_de(dolorestomago,indigestion).
sintoma_de(fiebre, infeccion).

%elimina(a,b): a tiene sintoma de b
tiene_sintoma(juan,fiebre).
tiene_sintoma(lorena,dolorestomago).
tiene_sintoma(fio,fiebre).

%elimina(a,b): a elimina b
elimina(aspirina,fiebre).
elimina(plidan,dolorestomago).

%enfermo_de(a,b): a(persona) esta enfermo de b(Enfermedad) 
enfermo_de(X,Y):- tiene_sintoma(X,A) , sintoma_de(A,Y).

%alivia(x,y): x alivia y 
alivia(X,Y):-elimina(X,A), sintoma_de(A,Y).

%3.- regla que permita ingresar  datos de :
% nombre  , edad , fecha de nac ,
%muestre la cantidad de dias que le falta cumplir años 

info(juan , 18 , 18 ,11).
info(pedro ,34,2,5).
info(rafael ,11,5,12).
info(ignacio ,23,24,8).
info(marin ,56,21,6).
info(rodri ,14,15,3).
info(paula ,37,8,9).


proceso1:-read(X) ,info(X,Y,D,M),write(X),write(' le falta '),R is 356-((D-31)+(M*31)) ,
write(R),write( '  dias para cumplir años '),E  is Y+1,write(E),write(' años.').