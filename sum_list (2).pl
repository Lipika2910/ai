% sumlist(L, S): Computes the sum of elements in list L
sumlist([], 0).
sumlist([H|T], S) :- sumlist(T, STail), S is H + STail.
