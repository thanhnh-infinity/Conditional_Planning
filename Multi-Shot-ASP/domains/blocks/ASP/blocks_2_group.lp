:- 2 { _assumed(h(init_group(X,1),0)) }, assumptions=1.
:- 2 { _assumed(h(init_group(X,2),0)) }, assumptions=1.
:- 2 { _assumed(h(init_group(X,3),0)) }, assumptions=1.
:- 2 { _assumed(h(init_group(X,4),0)) }, assumptions=1.
:- 2 { _assumed(h(init_group(X,5),0)) }, assumptions=1.

%====================================================

%#const n = 3.

block(a).
block(b).

group(1..5).

% For complete information Init
%holds(on(a,b),0).
%holds(clear(a),0).
%holds(handempty,0).
%holds(ontable(b),0).

% For in-complete information Init
% Group 1
unknown(init_group(handempty),1).
unknown(init_group(holding(a),1)).
unknown(init_group(holding(b),1)).

% Group 2
unknown(init_group(clear(a),2)).
unknown(init_group(holding(a),2)).
%unknown(init_group(on(b,a),2)).

% Group 3
unknown(init_group(holding(a),3)).
unknown(init_group(ontable(a),3)).
unknown(init_group(on(a,b),3)).

% Group 4
unknown(init_group(holding(b),4)).
unknown(init_group(clear(b),4)).
unknown(init_group(on(a,b),4)).

% Group 5
unknown(init_group(holding(b),5)).
unknown(init_group(ontable(b),5)).
unknown(init_group(on(b,a),5)).

%------------------------------------------------------

goal(T) :- holds(ontable(a),T), holds(on(b,a),T), step(T).

#show occur/2.
