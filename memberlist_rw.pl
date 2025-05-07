% memb(X, L): Checks if X is a member of list L
memb(X, [X|_]) :- !, write('Yes, it is a member.').
memb(X, [_|T]) :- memb(X, T).
memb(_, []) :- write('No, not a member.'), !, fail.
