longueur([],0).
longueur([_|T],N) :- longueur(T,N1), N is N1+1.

max2(X,X,X).
max2(X,Y,X) :- X>Y.
max2(X,Y,Y) :- Y>X.
max3(X,X,X,X).
max3(X,Y,Z,X) :- X>=Y,X>=Z.
max3(X,Y,Z,Y) :- Y>=X,Y>=Z.
max3(X,Y,Z,Z) :- Z>=X,Z>=Y.

%maximum d'un vecteur
maxvecteur([A],A) :- !, true.
maxvecteur([N|T], M) :- maxvecteur(T, M1), max2(M1, N, M).

%somme d'une vecteur
sumvecteur([],0).
sumvecteur([A|T], S) :- sumvecteur(T, S1), S is S1+A.   
