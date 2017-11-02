:-use_module(library(clpfd)).

a_cote(X,Y):-X#=Y+1.
a_cote(X,Y):-X#=Y-1.

animal(Vars,Zebre,Eau):-
Vars =[Anglais, Espagnol, Ukranien, Norvegien, Japonais,Chien, Escargot,  Cheval, Renard,Zebre,
		Rouge, Verte,Blanche, Jaune, Bleue ,Sculpteur,Diplomate, Medecin, Violoniste,Acrobate, 	Cafe,The,Lait,Eau, Orange],

% domaine de chaque variable 
Vars ins 1..5,
all_different([Anglais, Espagnol, Ukranien, Norvegien, Japonais]),
all_different([Chien, Escargot, Renard, Cheval, Zebre]),
all_different([Rouge, Verte,Blanche, Jaune, Bleue]),
all_different([Sculpteur,Diplomate, Medecin, Violoniste,Acrobate]),
all_different([Cafe,The,Lait,Eau, Orange]),
Lait#=3,
Norvegien#= 1,

Anglais#=Rouge ,  
Espagnol#=Chien, 
Ukranien#=The,
Verte #= Cafe,
Verte #= Blanche+1,
Sculpteur#=Escargot,
Diplomate#=Jaune,
Violoniste#=Orange,
Japonais#=Acrobate,
a_cote(Medecin,Renard),
a_cote(Diplomate,Cheval),
a_cote(Norvegien,Bleue),

label(Vars).






