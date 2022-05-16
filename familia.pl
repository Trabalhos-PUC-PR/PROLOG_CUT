homem(albert).
homem(bob).
homem(edward).
mulher(alice).
mulher(victoria).
progenitor(albert, edward). %pai(albert, edward).
progenitor(victoria, edward).
progenitor(albert, alice).
progenitor(victoria, alice).
progenitor(albert, bob).
progenitor(victoria, bob).

familia(X ,Y):- progenitor(X, Y).

irmao(X, Y):- familia(W, X), familia(Z, Y), W == Z.

primo(X, Y):-
    progenitor(Z, X), 
    progenitor(W, Y), 
    progenitor(A, Z), 
    progenitor(B, W), 
    (A==B)->write('sim');
    write('não'), nl, fail.
