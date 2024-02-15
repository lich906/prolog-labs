male(paul).
male(bill).
male(joe).
male(bill).
male(bob).
male(jim).
female(mary).
female(sue).
female(ann).
female(tammy).
parent(bill, joe).
parent(bill, ann).
parent(sue, joe).
parent(sue, ann).
parent(paul, jim).
parent(mary, jim).
parent(joe, tammy).
parent(ann, bob).
parent(jim, bob).

grandmother(X, Y):-
    parent(X, Z), parent(Z, Y), female(X).
% ?- grandmother(X, bob).

grandchild(X, Y):-
    parent(Y, Z), parent(Z, X)
