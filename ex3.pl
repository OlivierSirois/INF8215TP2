
% -----------------------------------------------------------------------
% Excercise 3 : Arbre genealogique 
% -----------------------------------------------------------------------

% -----------------------------------------------------------------------
% Relations
% -----------------------------------------------------------------------
man(hugo).
man(gabriel).
man(loic).
man(maxime).
man(mathieu). 
man(alexis).
woman(rose).
woman(emma).
woman(justine).
woman(alice).
woman(catherine).
woman(lea).

% Hugo  Catherine

parent(hugo, lea).
parent(catherine, lea).
parent(hugo, gabriel).
parent(catherine, gabriel).

% Loic et Justine

parent(loic, alice).
parent(justine, alice).
parent(loic, maxime).
parent(justine, maxime).
parent(loic, mathieu).
parent(justine, mathieu).

% Gabriel et Alice

parent(gabriel, alexis).
parent(alice, alexis).
parent(gabriel, rose).
parent(alice, rose).
parent(gabriel, emma).
parent(alice, emma).

% -----------------------------------------------------------------------
% Rules
% -----------------------------------------------------------------------

% Kids
child(X, Y)    :- parent(Y, X).
daughter(X, Y) :- woman(X), parent(Y, X).
son(X, Y)      :- man(X), parent(Y, X).

% Parents
mother(X, Y) :- woman(X), child(Y, X).
father(X, Y) :- man(X), child(Y, X).
brother(X, Y) :- man(X), parent(Z, X), parent(Z, Y),X\=Y.
sister(X, Y)  :-  woman(X), parent(Z, X), parent(Z, Y), X\=Y. 
% Uncle, aunt
uncle(X, Y) :- parent(Z,Y),brother(X, Z). 
%uncle(X, Y) :- father(Z, Y), brother(X, Z). 
aunt(X, Y)  :-  sister(X, Z), parent(Z, Y).

% Grandparents
grand_parent(X, Y) :- child(Y, Z), parent(X, Z).
grand_father(X, Y) :- child(Y, Z), father(X, Z).
grand_mother(X, Y) :- child(Y, Z), mother(X, Z).

% Grandchildren
grand_child(X, Y)    :- grand_parent(Y, X).
grand_daughter(X, Y) :- woman(X), grand_parent(Y, X).
grand_son(X, Y)      :- man(X), grand_parent(Y, X).

% Siblings, nephew, niece

nephew(X, Y)  :- brother(Y, Z), son(X, Z). 
nephew(X, Y)  :- sister(Y, Z),son(X, Z).
niece(X, Y)   :- daughter(X, Z), brother(Y, Z).
niece(X, Y)   :- daughter(X, Z), sister(Y, Z).

