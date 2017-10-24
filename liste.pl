max([H1, H2 |T],M):- max([H|T],M), max(H1,H2,H).
max([H1],H1).

max(X,X,X).
max(X,Y,X) :- X>Y.
max(X,Y,Y) :- Y>X.


%somme d'une vecteur
sumvecteur([],0).
sumvecteur([A|T], S) :- sumvecteur(T, S1), S is S1+A.

% retourne valeur vecteur
nth(N[H1|T],R):- R ==H.
nth(N,[H1|T],R):- N1 is N-1 ,nth(N1,T,R),R/==H1.


zip([],[],[]). 
zip([H1|T1],[H2|T2],R):- zip(T1,T2,R), R=[H1,H2].

enumerate(0,[]). 
enumerate(N,L):- N1 is N-1, enumerate(N1,L), L[N1|_]

pieces =[2,1,0.25,0.1,0.05]
rendmonnaie(Argent,Argent).
rendmonnaie(Argent, Prix) :- M = Argent-Prix, RM(M,[2,1,0.25,0.1,0.05]).

RM(M,[H1|T]):- H1> M, RM(M,T).
RM(M,[H1|T]):- M>H1, n= floor(M/H1), M1=(M-n*H1),RM(M1,T), write(n),write('pieces de '), write(H1) , nl.
RM(M,[]). 







