max([H1, H2 |T],M):-  maxi(H1,H2,H), max([H|T],M).
max([H1],H1).

maxi(X,X,X).
maxi(X,Y,X):- X>Y.
maxi(X,Y,Y) :- Y>X.


%somme d'une vecteur
sumvecteur([],0).
sumvecteur([A|T], S) :- sumvecteur(T, S1), S is S1+A.

% retourne valeur vecteur
nth(N,[H1|_],R):- N==1 , R = H1.
nth(N,[_|T],R):- N >1, N1 is N-1 ,nth(N1,T,R).


zip([],[],[]). 
zip([H1|T1],[H2|T2] ,[[H1,H2]|T]):- zip(T1,T2,T).


enumerate(0,[]). 
enumerate(N,[S|N]):- N > 0, N1 is N-1, enumerate(N1,S).


rendmonnaie(Argent, Argent).
rendmonnaie(Argent, Prix) :- M is Argent - Prix, rm(M,[2,1,0.25,0.1,0.05]).


%rm(M,[H1|T]):- H1> M, rm(M,T).
rm(M,[H1|T]):-  D is M/H1, N is floor(D),  M1 is M-N*H1 ,rm(M1,T), write(N),write(' pieces de '), write(H1) , nl.
rm(_,[]). 


ffloor(M,N,R):- R is M-N.






