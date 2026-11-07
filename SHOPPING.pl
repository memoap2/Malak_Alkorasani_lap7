
% ARTI 303 - Lab 7
% Task 2: Shopping List Program

:- dynamic shopping_list/1.


% Initial Shopping List
shopping_list([coffee, milk, chocolate, apple, juice]).


% Display the Menu
menu :-
    nl,
    write('***** SHOPPING LIST *****'), nl,
    write('d. Display all items'), nl,
    write('a. Add an item'), nl,
    write('e. Exit'), nl,
    write('Enter your choice: '),
    read(Choice),
    process_choice(Choice).


% Process the user's choice
process_choice(d) :-
    shopping_list(List),
    display_list(List),
    menu.

process_choice(a) :-
    write('Enter the item you want to add: '),
    read(Item),
    shopping_list(List),
    add(Item, List, NewList),
    retractall(shopping_list(_)),
    assertz(shopping_list(NewList)),
    write('Item added successfully.'), nl,
    menu.

process_choice(e) :-
    write('Goodbye!'), nl.

process_choice(Choice) :-
    Choice \= d,
    Choice \= a,
    Choice \= e,
    write('Invalid choice. Please try again.'), nl,
    menu.


% Display the list using recursion
display_list([]).

display_list([Head|Tail]) :-
    write(Head), nl,
    display_list(Tail).


% Add an item to the front
add(X, List, [X|List]).

