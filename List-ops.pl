
% ARTI 303 - Lab 7
% Task 1: List Operations

% --------------------------------
% 1. Membership
% --------------------------------

member1(X, [X|_Tail]).

member1(X, [_Head|Tail]) :-
    member1(X, Tail).


% --------------------------------
% 2. Concatenation
% --------------------------------

conc([], L, L).

conc([X|L1], L2, [X|L3]) :-
    conc(L1, L2, L3).


% --------------------------------
% 3. Addition
% --------------------------------

add(X, L, [X|L]).


% --------------------------------
% 4. Deletion
% --------------------------------

del(X, [X|Tail], Tail).

del(X, [Y|Tail], [Y|Tail1]) :-
    del(X, Tail, Tail1).
