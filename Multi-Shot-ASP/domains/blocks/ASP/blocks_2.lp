:- 2 { _assumed(h(initially(handempty),0)); _assumed(h(initially(holding(a)),0)) ; _assumed(h(initially(holding(b)),0)) }, assumptions=1.
:- 2 { _assumed(h(initially(clear(a)),0)) ; _assumed(h(initially(holding(a)),0)) ; _assumed(h(initially(on(b,a)),0)) }, assumptions=1.
:- 2 { _assumed(h(initially(ontable(a)),0)) ; _assumed(h(initially(holding(a)),0)) ; _assumed(h(initially(on(a,b)),0)) }, assumptions=1.
:- 2 { _assumed(h(initially(holding(b)),0)) ; _assumed(h(initially(clear(b)),0)) ; _assumed(h(initially(on(a,b)),0)) }, assumptions=1.
:- 2 { _assumed(h(initially(holding(b)),0)) ; _assumed(h(initially(ontable(b)),0)) ; _assumed(h(initially(on(b,a)),0)) }, assumptions=1.
%====================================================

%#const n = 3.

block(a).
block(b).


% For complete information Init
%holds(on(a,b),0).
%holds(clear(a),0).
%holds(handempty,0).
%holds(ontable(b),0).

% For in-complete information Init
% Group 1
unknown(initially(handempty)).
unknown(initially(holding(a))).
unknown(initially(holding(b))).

% Group 2
unknown(initially(clear(a))).
unknown(initially(holding(a))).
unknown(initially(on(b,a))).

% Group 3
unknown(initially(holding(a))).
unknown(initially(ontable(a))).
unknown(initially(on(a,b))).

% Group 4
unknown(initially(holding(b))).
unknown(initially(clear(b))).
unknown(initially(on(a,b))).

% Group 5
unknown(initially(holding(b))).
unknown(initially(ontable(b))).
unknown(initially(on(b,a))).


%------------------------------------------------------
goal(T) :- holds(ontable(a),T), holds(on(b,a),T), step(T).
