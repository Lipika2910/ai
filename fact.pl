fact(0,1).
fact(N,F):-  N1 is N-1, fact(N1,X1), F is X1*N.
