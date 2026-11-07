
% ARTI 303 - Lab 7
% Task 3: List Tasks


% --------------------------------
% Task 1: Delete Every Occurrence
% --------------------------------

deleteElement(_, [], []).

deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result).

deleteElement(X, [Head|Tail], [Head|Result]) :-
    X \= Head,
    deleteElement(X, Tail, Result).


% --------------------------------
% Task 2: Add an Element at the End
% --------------------------------

add_at_the_end(X, [], [X]).

add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).