:- use_module(library(clpfd)).

abduce([X,Y],Z) :-
    [X,Y] ins 0..9,
    Z #= X + Y,
    label([X,Y,Z]).
