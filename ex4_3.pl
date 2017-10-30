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
max2(X,Y,X) :- X>Y.
max2(X,Y,Y) :- Y>X.
max2(X,X,X,X).
max2(X, Y, Z, X) :- max2(Z, Y, R), max2(R, X, X), !.
max2(X, Y, Z, Y) :- max2(X, Z, R), max2(R, Y, Y), !.
max2(X, Y, Z, Z) :- max2(X, Y, R), max2(R, Z, Z), !. 

% ----------------------------------------------------------------------
% Exercise 4.3.3 : obtenir la derivee d(F, X, G)   
% ----------------------------------------------------------------------

% Regle dx/dx = 1. 
d(X, X, 1) :- !.

% Regle constante dC/dx = 0
d(C, X, 0) :- atomic(C).   

% Regle somme d(u+v)/dx = du/dx + dv/dx
d(U+V, X, P+Q) :- d(U, X, P), d(V, X, Q).
d(U-V, X, P-Q) :- d(U, X, P), d(V, X, Q).

% Regle produit de c*df/dx 
d(C*Z, X, R) :- atomic(C), C \= X, d(Z, X, Y), R = C*Y, !.   

% Regle produit de d(u*v) = v*du/dx +  u*dv/dx
d(U*V, X, R) :- d(U, X, P), d(V, X, Q), R = V*P + U*Q.   

% Regle division de d(u/v) = (v*du/dx -  u*dv/dx)/g^2
d(U/V, X, R) :- d(U, X, P), d(V, X, Q), R = (V*P - U*Q)/(V^2).

% Regle d(X^b)/dx = b*X^(b-1)
d(Z^N, X, R) :- atomic(N), C\=X, d(Z, X, Y), R = N*Y*Z^(N-1).  

