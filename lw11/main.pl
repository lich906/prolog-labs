%%%%%  3.1  %%%%%%%%%%%%%%%%
trim([], []).
trim([_], []).
trim([_|T], L2) :- append(L2, [_], T).

%%%%%  3.2  %%%%%%%%%%%%%%%%

first_last([], []).
first_last([X], [X]).
first_last([H|T], L2) :- append(Mid, [L], T), append([L|Mid], [H], L2).

%%%%%  3.3  %%%%%%%%%%%%%%%%

total([], 1).
total([H|T], S) :- total(T, S_), S is S_ * H.

%%%%%  3.4  %%%%%%%%%%%%%%%%

place(X, L1, L2) :- select(X, L2, L1).

%%%%%  3.5  %%%%%%%%%%%%%%%%

double([], []).
double([H|T], LL) :- double(T, LL_), append([H, H], LL_, LL).

%%%%%  3.6  %%%%%%%%%%%%%%%%

even(N) :- mod(N, 2) =:= 0.
odd(N) :- mod(N, 2) =\= 0.

split([], [], []).
split(L, Leven, Lodd) :-
    append(I, [X], L),
    even(X),
    append([X], Leven_, Leven),
    split(I, Leven_, Lodd).
split(L, Leven, Lodd) :-
    append(I, [X], L),
    odd(X),
    append([X], Lodd_, Lodd),
    split(I, Leven, Lodd_).

%%%%%  3.7  %%%%%%%%%%%%%%%%

repeat_back3([], []).
repeat_back3([X], [X, X, X]).
repeat_back3([H|T], L2) :- 
    append(M, [L], T), append([L, L, L|M], [H, H, H], L2).

%%%%%  3.8  %%%%%%%%%%%%%%%%

combi(X, [], X).
combi([], _, []).
combi([H1|T1], [H2|T2], L) :-
    combi(T1, T2, L_),
    append([H1, H2], L_, L).
