max_list([X], X).

max_list([H|T], Max) :-
    max_list(T, TailMax),
    Max is max(H, TailMax).
