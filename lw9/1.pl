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
    parent(Y, Z), parent(Z, X).

different(X, Y):- X \= Y.

sister(X, Y):-
    parent(Z, X), parent(Z, Y), female(X), different(X, Y).

aunt(X, Y):-
    sister(X, Z), parent(Z, Y).

cousin(X, Y):-
    parent(B, X), parent(A, B),
    parent(A, C), parent(C, Y).

likes(ellen, reading).
likes(john, computers).
likes(john, badminton).
likes(john, photo).
likes(john, reading).
likes(leonard, badminton).
likes(eric, swimming).
likes(eric, reading).
likes(eric, chess).
likes(paul, swimming).

hasFourHobbies(X):-
     aggregate_all(count, likes(X, _), Count),
     Count =:= 4 .

isHobbyOf(Hobby, X) :- likes(X, Hobby).
