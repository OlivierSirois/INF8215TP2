animal(chien).
animal(chat).
prenom(paul).
prenom(pierre).
prenom(jean).
possede(jean,chat).
possede(pierre,chien).
possede(pierre,cheval).
amis(pierre,jean).
amis(jean,pierre).
amis(jean,paul).
amis(pierre,paul).
amis(paul,jacques).

% Implications
amis_2(X,Z) :- amis(X,Y), amis(Y, XZ).
amis(X) :- amis(X, _).

