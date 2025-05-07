% maxlist(L, M): Finds the maximum element in list L
maxlist([M], M) :- !.
maxlist([H|T], M) :- maxlist(T, MTail), (H > MTail -> M = H ; M = MTail).
