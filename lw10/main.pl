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
    seg(N, point(XH1, YH), point(XH2, YH)),
    seg(M, point(XV, YV1), point(XV, YV2)),
    XH1 =< XV, XV =< XH2,
    YV1 >= YH, YH >= YV2,
    X = XV,
    Y = YH,
    ML is abs(YV2 - YV1),
    NL is abs(XH2 - XH1).

cross(M, N, point(X, Y), NL, ML) :-
    seg(N, point(XH1, YH), point(XH2, YH)),
    seg(M, point(XV, YV1), point(XV, YV2)),
    XH1 =< XV, XV =< XH2,
    YV1 >= YH, YH >= YV2,
    X = XV,
    Y = YH,
    ML is abs(YV2 - YV1),
    NL is abs(XH2 - XH1).

%crossBoth(N, M, point(X, Y), NL, ML) :-
%  (cross(N, M, point(X1, Y1), NL1, ML1), X is X1, Y is Y1, NL is NL1, ML is ML1);
%  (cross(M, N, point(X2, Y2), NL2, ML2), X is X2, Y is Y2, NL is NL2, ML is ML2).

perimeter(A,B,C,D,P,S) :-
  seg(A, point(_, AY), point(_, AY)),
  seg(C, point(_, CY), point(_, CY)),
  seg(B, point(BX, _), point(BX, _)),
  seg(D, point(DX, _), point(DX, _)),
  AY > CY,
  BX > DX,
  cross(A, B, point(ABX, ABY), _, _),
  cross(B, C, point(BCX, BCY), _, _),
  cross(C, D, point(CDX, CDY), _, _),
  cross(D, A, point(DAX, DAY), _, _),
  P is ((ABX-DAX)+(ABY-BCY)+(BCX-CDX)+(DAY-CDY)),
  S is ((ABX-DAX)*(ABY-BCY)).
