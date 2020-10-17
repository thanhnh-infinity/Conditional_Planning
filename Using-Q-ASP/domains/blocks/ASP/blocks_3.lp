:- 2 { _assumed(h(initially(handempty),0)); _assumed(h(initially(holding(a)),0)) ; _assumed(h(initially(holding(b)),0)) ; _assumed(h(initially(holding(c)),0)) }, assumptions=1.
:- 2 { _assumed(h(initially(clear(a)),0)) ; _assumed(h(initially(holding(a)),0)) ; _assumed(h(initially(on(b,a)),0)) ; _assumed(h(initially(on(c,a)),0)) }, assumptions=1.
:- 2 { _assumed(h(initially(ontable(a)),0)) ; _assumed(h(initially(holding(a)),0)) ; _assumed(h(initially(on(a,b)),0)) ; _assumed(h(initially(on(a,c)),0)) }, assumptions=1.
:- 2 { _assumed(h(initially(holding(b)),0)) ; _assumed(h(initially(clear(b)),0)) ; _assumed(h(initially(on(a,b)),0)) ; _assumed(h(initially(on(c,b)),0)) }, assumptions=1.
:- 2 { _assumed(h(initially(holding(b)),0)) ; _assumed(h(initially(ontable(b)),0)) ; _assumed(h(initially(on(b,a)),0)) ; _assumed(h(initially(on(b,c)),0)) }, assumptions=1.
:- 2 { _assumed(h(initially(holding(c)),0)) ; _assumed(h(initially(clear(c)),0)) ; _assumed(h(initially(on(a,c)),0)) ; _assumed(h(initially(on(b,c)),0)) }, assumptions=1.
:- 2 { _assumed(h(initially(holding(c)),0)) ; _assumed(h(initially(ontable(c)),0)) ; _assumed(h(initially(on(c,a)),0)) ; _assumed(h(initially(on(c,b)),0)) }, assumptions=1.
%====================================================

%#const n = 6.

block(a).
block(b).
block(c).

% For in-complete information Init
% Group 1
unknown(initially(handempty)).
unknown(initially(holding(a))).
unknown(initially(holding(b))).
unknown(initially(holding(c))).

% Group 2
unknown(initially(clear(a))).
unknown(initially(holding(a))).
unknown(initially(on(b,a))).
unknown(initially(on(c,a))).

% Group 3
unknown(initially(holding(a))).
unknown(initially(ontable(a))).
unknown(initially(on(a,b))).
unknown(initially(on(a,c))).

% Group 4
unknown(initially(holding(b))).
unknown(initially(clear(b))).
unknown(initially(on(a,b))).
%unknown(initially(on(c,b))).

% Group 5
unknown(initially(holding(b))).
unknown(initially(ontable(b))).
unknown(initially(on(b,a))).
unknown(initially(on(b,c))).

% Group 6
unknown(initially(holding(c))).
unknown(initially(clear(c))).
unknown(initially(on(a,c))).
unknown(initially(on(b,c))).

% Group 7
unknown(initially(holding(c))).
unknown(initially(ontable(c))).
unknown(initially(on(c,a))).
%unknown(initially(on(c,b))).

%------------------------------------------------------

goal(T) :- holds(ontable(a),T), holds(on(b,a),T), holds(on(c,b),T), step(T).

#show occur/2.
