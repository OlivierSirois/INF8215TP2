
% 1. R = X + Y
sum(X, Y, R) :- R is Y+X.

% 2. M = max(X, Y)
% max(X, Y) :- X>Y.
% max2(X, Y, M) :- M is max(X, Y, M).
% max3(X, Y, Z, M) :- M is max(max(X, Y), Z). 
max2(X,X,X).
max2(X,Y,X) :- X>Y.
max2(X,Y,Y) :- Y>X.
max3(X,X,X,X).
max3(X,Y,Z,X) :- X>=Y,X>=Z.
max3(X,Y,Z,Y) :- Y>=X,Y>=Z.
max3(X,Y,Z,Z) :- Z>=X,Z>=Y.

% 3. d(F, X, G) 

 
