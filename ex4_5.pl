word(abalone, a, b, a, l, o, n, e).
word(abandon, a, b, a, n, d, o, n).
word(enhance, e, n, h, a, n, c, e).
word(anagram, a, n, a, g, r, a, m).
word(connect, c, o, n, n, e, c, t).
word(elegant, e, l, e, g, a, n, t).

pere(hugo,gabriel).
pere(gabriel,alexis).
pere(alexis,paul).
pere(paul,andre).
ancetre(X,Y):-pere(X,Y).
ancetre(X,Y):-pere(X,Z),ancetre(Z,Y).

crossword(V1,V2,V3,H1,H2,H3) :- word(V1,V11,V12,V13,V14,V15,V16,V17), word(V2,V21,V22,V23,V24,V25,V26,V27), word(V3,V31,V32,V33,V34,V35,V36,V37), word(H1,H11,V12,H13,V22,H15,V32,H17), word(H2, H21, V14, H23, V24, H25, V34, H27), word(H3,H31,V16,H33,V26,H35,V36,H37). 
