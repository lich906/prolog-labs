seg(1, point(1, 11), point(14, 11)).
seg(2, point(2, 4), point(13, 4)).
seg(3, point(2, 2), point(9, 2)).
seg(4, point(3, 10), point(3, 1)).
seg(5, point(7, 10), point(13, 10)).
seg(6, point(8, 13), point(8, 0)).
seg(7, point(10, 12), point(10, 3)).
seg(8, point(11, 13), point(11, 3)).
seg(9, point(12, 12), point(12, 2)).

horiz(N):-
    seg(N, point(_, Y), point(_, Y)).

vertical(N):-
    seg(N, point(X, _), point(X, _)).

cross(N, M, point(X, Y), NL, ML) :-
    seg(N, point(XH1, Y), point(XH2, Y)),
    seg(M, point(X, YV1), point(X, YV2)),
    XH1 =< X, X =< XH2,
    YV1 >= Y, Y >= YV2,
    ML is abs(YV2 - YV1),
    NL is abs(XH2 - XH1).

perimetr(A, B, C, D, P, S) :-
  cross(A, B, point(X1, Y2), _, _),
  cross(C, B, point(X1, Y1), _, _),
  cross(C, D, point(X2, Y1), _, _),
  cross(A, D, point(X2, Y2), _, _),
  X1 < X2,
  Y1 < Y2,
  P is 2*((X2 - X1)+(Y2 - Y1)),
  S is (X2 - X1)*(Y2 - Y1).
