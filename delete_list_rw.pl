delete(1, [_|T], T) :- !.
delete(N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    delete(N1, T, R), !.
delete(_, [], _) :-
    write('Deletion failed! Invalid position.'), nl, !, fail.

run_delete :-
    write('Enter position to delete: '), read(N),
    write('Enter the list: '), read(L),
    (   delete(N, L, R) ->
        write('Updated List: '), write(R), nl
    ;   write('Deletion failed!'), nl, fail).
