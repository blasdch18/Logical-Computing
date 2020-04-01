% ejercicios de recursividad 5

%sumas(X,S):- X>0 , R is X-1, sumas(X,M) , S is X+M.


%par(X,S):-X==S. 
%par(X,S):- write(X) , M is X+2 , sum_par(M,S).

suma(X,0):- X =\= 0.
suma(X,Y):- Y>0 , A is Y+1 , suma(X,A), Z is A*X.
