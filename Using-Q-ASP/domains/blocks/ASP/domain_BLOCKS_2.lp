% Defining the time constats and objects
step(0..n).

% Defning fluents:
fluent(on(X,Y)) :- block(X), block(Y), X!=Y.
fluent(ontable(X)) :- block(X).

% Defining an additional flunet 
fluent(clear(X)) :- block(X).
fluent(handempty).
fluent(holding(X)) :- block(X).

% Defining actions
