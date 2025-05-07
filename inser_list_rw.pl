insert(I, 1, L, [I|L]) :- !.
insert(I, N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    insert(I, N1, T, R), !.

run_insert :-
    write('Enter element to insert: '), read(I),
    write('Enter position: '), read(N),
    write('Enter the list: '), read(L),
    (   insert(I, N, L, R) ->
        write('Updated List: '), write(R), nl
    ;   write('Insertion failed! Invalid position.'), nl, fail).
