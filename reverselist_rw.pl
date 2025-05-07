reverse([], []) :- !.
reverse([H|T], R) :-
    reverse(T, RevT),
    conc(RevT, [H], R), !.

run_reverse :-
    write('Enter a list: '), read(L),
    reverse(L, R),
    write('Reversed List: '), write(R), nl.
