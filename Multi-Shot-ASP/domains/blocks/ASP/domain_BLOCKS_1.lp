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
action(pick_up(X)) :- block(X).
action(put_down(X)) :- block(X).
action(stack(X,Y)) :- block(X), block(Y), X!=Y.
action(unstack(X,Y)) :- block(X), block(Y), X!=Y.

% Static law
holds(neg(on(X,Y)),T) :- step(T), fluent(on(X,Y)),
        block(X), block(Y), X!=Y,
        block(Z), X!=Z, Y!=Z, holds(on(X,Z),T).
holds(neg(on(X,Y)),T) :- step(T), fluent(ontable(X)),
        block(X), block(Y), X!=Y, holds(ontable(X),T).
holds(neg(on(X,Y)),T) :- step(T), fluent(holding(X)),
        block(X), block(Y), X!=Y, holds(holding(X),T).
holds(neg(on(X,Y)),T) :- step(T), fluent(holding(Y)),
        block(X), block(Y), X!=Y, holds(holding(Y),T).

holds(neg(ontable(X)),T) :- step(T), fluent(on(X,Y)),
        block(X), block(Y), X!=Y, holds(on(X,Y),T).
holds(neg(ontable(X)),T) :- step(T), fluent(holding(X)),
        block(X), holds(holding(X),T).

holds(neg(clear(X)),T) :- step(T),
        block(X), block(Y), X!=Y,
        fluent(on(Y,X)), holds(on(Y,X),T).
holds(neg(clear(X)),T) :- step(T),
        block(X), fluent(holding(X)),
        holds(holding(X),T).

holds(clear(X),T) :- step(T),
        block(X), not holds(neg(clear(X)),T).

holds(neg(holding(X)),T) :- step(T),
        block(X), block(Y), X!=Y,
        fluent(on(X,Y)), holds(on(X,Y),T).
holds(neg(holding(Y)),T) :- step(T),
        block(X), block(Y), X!=Y,
        fluent(on(X,Y)), holds(on(X,Y),T).
holds(neg(holding(X)),T) :- step(T),
        block(X), fluent(ontable(X)), holds(ontable(X),T).


% Support
holds(neg(F),0) :- fluent(F), not holds(F,0).
%:- holds(holding(X),T), holds(holding(Y),T), X!=Y, block(X), block(Y).

% Executability condition
possible(pick_up(X),T) :- block(X), step(T),
        holds(clear(X),T), holds(handempty,T),
        holds(ontable(X),T).
possible(put_down(X),T) :- block(X), step(T),
        holds(holding(X),T).
possible(stack(X,Y),T) :- block(X), block(Y), X!=Y, step(T),
        holds(holding(X),T), holds(clear(Y),T).
possible(unstack(X,Y),T) :- block(X), block(Y), X!=Y, step(T),
        holds(handempty,T), holds(on(X,Y),T), holds(clear(X),T).

:- action(A), step(T), occur(A,T), not possible(A,T).
1{occur(A,I):action(A)}1 :- step(I), not goal(I), I <= n.
:- action(A1), action(A2), occur(A1,I), occur(A2,I), A1 != A2, step(I).

% Representing action effects

holds(holding(X),T+1) :- step(T), block(X), occur(pick_up(X),T).
holds(neg(ontable(X)),T+1) :- step(T), block(X), occur(pick_up(X),T).
holds(neg(clear(X)),T+1) :- step(T), block(X), occur(pick_up(X),T).    
holds(neg(handempty),T+1) :- step(T), block(X), occur(pick_up(X),T).   

holds(neg(holding(X)),T+1) :- step(T), block(X), occur(put_down(X),T).
holds(clear(X),T+1) :- step(T), block(X), occur(put_down(X),T). 
holds(handempty,T+1) :- step(T), block(X), occur(put_down(X),T).
holds(ontable(X),T+1) :- step(T), block(X), occur(put_down(X),T).

holds(on(X,Y),T+1) :- step(T), block(X), block(Y), X!=Y, occur(stack(X,Y),T).
holds(handempty,T+1) :- step(T), block(X), block(Y), X!=Y, occur(stack(X,Y),T).
holds(clear(X),T+1) :- step(T), block(X), block(Y), X!=Y, occur(stack(X,Y),T).
holds(neg(clear(Y)),T+1) :- step(T), block(X), block(Y), X!=Y, occur(stack(X,Y),T).
holds(neg(holding(X)),T+1) :- step(T), block(X), block(Y), X!=Y, occur(stack(X,Y),T).

holds(holding(X),T+1) :- step(T), block(X), block(Y), X!=Y, occur(unstack(X,Y),T).
holds(clear(Y),T+1) :- step(T), block(X), block(Y), X!=Y, occur(unstack(X,Y),T).
holds(neg(clear(X)),T+1) :- step(T), block(X), block(Y), X!=Y, occur(unstack(X,Y),T).
holds(neg(handempty),T+1) :- step(T), block(X), block(Y), X!=Y, occur(unstack(X,Y),T).
holds(neg(on(X,Y)),T+1) :- step(T), block(X), block(Y), X!=Y, occur(unstack(X,Y),T).

% Inertial rule
holds(F,T+1)      :- holds(F,T), not holds(neg(F),T+1), fluent(F), step(T).
holds(neg(F),T+1) :- holds(neg(F),T), not holds(F,T+1), fluent(F), step(T).

% Goal 
success :- goal(I), I <= n, step(I).
:- not success.




































