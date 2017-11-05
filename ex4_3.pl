% -----------------------------------------------------------------------
% Excercise 4.3 : Unification 
% -----------------------------------------------------------------------

% ----------------------------------------------------------------------
% Exercise 4.3.1 : obtenir somme de X + Y
% ----------------------------------------------------------------------

sum(X, Y, R) :- R is Y + X.

% ----------------------------------------------------------------------
% Exercise 4.3.2 : obtenir max de  X et Y et max de X, Y et Z. 
% ----------------------------------------------------------------------

max2(X,X,X).
max2(X,Y,X) :- X>Y, !.
max2(X,Y,Y) :- Y>X, !.
max2(X,X,X,X).
max2(X, Y, Z, X) :- max2(Z, Y, R), max2(R, X, X), !.
max2(X, Y, Z, Y) :- max2(X, Z, R), max2(R, Y, Y), !.
max2(X, Y, Z, Z) :- max2(X, Y, R), max2(R, Z, Z), !. 

% ----------------------------------------------------------------------
% Exercise 4.3.3 : obtenir la derivee d(F, X, G)   
% ----------------------------------------------------------------------

% Regle d’une fonction identité f(x)=x -> f’(x)=x’=1  
d(X, X, 1) :- !. % eviter back-chaining

% Règle d’une fonction constante f(x)=c -> f’(x)=C’=0
d(C, X, 0) :- atomic(C), C\=X.    

% Regle de somme f(x) + g(x) -> f´(x) + g´(x)
d(F+G, X, R) :- d(F, X, P), d(G, X, Q), R = P + Q.
d(F-G, X, R) :- d(F, X, P), d(G, X, Q), R = P - Q.

% Regle de produit f(x) = c*x -> f´(x)=c*x´ 
d(C*F, X, R) :- atomic(C), d(F, X, Y), R = C*Y, !. % eviter back-chaining

% Regle d une fonction f(x)=x^n -> f´(x)=n*x^(n-1)
d(F^N, X, R) :- atomic(N), d(F, X, Y), R = N*Y*F^(N-1).  

% ----------------------------------------------------------------------
