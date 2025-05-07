conc([], L, L) :- !.
conc([H|T], L, [H|R]) :-
    conc(T, L, R), !.

run_conc :-
    write('Enter first list: '), read(L1),
    write('Enter second list: '), read(L2),
    conc(L1, L2, L3),
    write('Concatenated List: '), write(L3), nl.
