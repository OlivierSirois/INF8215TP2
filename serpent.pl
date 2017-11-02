:-use_module(library(clpfd)).

animal(Vars,Serpent):-
Vars =[Anglais, Espagnol, Japonais,Jaguar, Escargot, Serpent,Rouge,Bleue, Blanc],

% domaine de chaque variable 
Vars ins 1..3,
all_different([Anglais, Espagnol, Japonais]),
all_different([Jaguar, Escargot, Serpent]),
all_different([Rouge,Bleue, Blanc]),
Anglais#=Rouge ,  
Espagnol#=Jaguar, 
Japonais #= Escargot-1,
Escargot #= Bleue+1,


label(Vars).