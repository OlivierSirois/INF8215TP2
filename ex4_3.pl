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

% 3. d(F, X, G)   

% df/dx = dC/dx = 0
d(C, X, 0) :- atomic(C), !.   

% df/dx = dx/dx = 1
d(X, X, 1).

% df/dx = u*dv/dx + v*du/dx
d(U+V, X, P+Q) :- d(U, X, P), d(V, X, Q).
d(U-V, X, P-Q) :- d(U, X, P), d(V, X, Q).
 
% df/dx = d(x^b)/dx = b*x^(b-1)
d(X^N, X, N*X^(N-1)). % :- R=N*X^(N-1).  

% C*df/dx = C*d(x^b)/dx = C*b*x^(b-1)
d(C*X^N, X, C*N*X^(N-1)) :- atomic(C), atomic(N), !.

% c*df/dx = c
d(C*X, X, C) :- atomic(C), !.
 
