%hechos : padre , madre , varon , mujer
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

%regla abuelo (a,b) : a es el abuelo de b.
abuelo(X,Y):-padre(X,A),padre(A,Y),varon(X).