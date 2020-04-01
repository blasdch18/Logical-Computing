%ejemplos de hechos
% estudia(x,y): x estudia y
estudia(luis,fisica).
estudia(juan,logica).
estudia(ana,algebra).
estudia(ada,fisica). 
estudia(luis,algebra).
estudia(renato,ami).

%ejemplo 2
%amigo(a,b): a es amigo de b
amigo(fabricio,angel).
amigo(misael,renzo).
amigo(wilbert, francisco).
amigo(anibal,wilbert).
amigo(fabricio,renzo).
amigo(anabel,yessica).

%regla amigo2(a,b):a y b son amigos 
amigo2(X,Y):-amigo(X,Y);amigo(Y,X).
%varon (a): a es varon , mujer(a):a es mujer
varon(fabricio).
varon(angel).
varon(misael).
varon(renzo).
varon(wilbert).
varon(anibal).
varon(francisco).
mujer(anabel).
mujer(yessica).

%amigov(a,b):los amigos varones de a son b

amigov(X,Y):-amigo2(X,Y),varon(Y).
amigom(X,Y):-amigo2(X,Y),mujer(Y).



