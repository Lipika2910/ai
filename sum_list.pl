sum_list([], 0).

sum_list([Head | Tail], Sum) :-
    sum_list(Tail, SumTail),
    Sum is Head + SumTail.
