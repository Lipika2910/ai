% evenlength(List): Checks if the list has an even length
evenlength([]) :- write('List has even length.'), !.
evenlength([_,_|T]) :- evenlength(T).
evenlength([_]) :- write('List has odd length.'), !, fail.

% oddlength(List): Checks if the list has an odd length
oddlength([_]) :- write('List has odd length.'), !.
oddlength([_,_|T]) :- oddlength(T).
oddlength([]) :- write('List has even length.'), !, fail.
