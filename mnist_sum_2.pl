:- use_module(library(clpfd)).

%% X is a list of Len digits, sum of X is Y
abduce(X, Len, Y) :-
    length(X, Len),
    X ins 0..9,
    sum(X, #=, Y),
    label(X).
