% 1. R = X + Y
sum(X, Y, R) :- R is Y+X.

% 2. M = max(X, Y) 
max2(X,X,X).
max2(X,Y,X) :- X>Y.
max2(X,Y,Y) :- Y>X.
max3(X,X,X,X).
max3(X,Y,Z,X) :- X>=Y,X>=Z.
max3(X,Y,Z,Y) :- Y>=X,Y>=Z.
max3(X,Y,Z,Z) :- Z>=X,Z>=Y.

% 3. d(F, X, G) - separate each case ?

% dC/dx = 0
d(C, X, 0) :- atomic(C).   

% dx/dx = 1
d(X, X, 1).

% du/dx + du/dx 

% u*dv/dx + v*du/dx

% d(x^b)/dx = b*x^(b-1)

