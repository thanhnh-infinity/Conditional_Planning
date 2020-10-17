%=========ONTOLOGY - DOMAIN ===================
#include "./domain_BLOCKS_1.lp".
%=========Reasoning for UNKNOWN================

#const assumptions=0.

%==== possible initial situations

% For normal
{ h(initially(X),0) } :- unknown(initially(X)).

%==== quantification

% == Exists
%_exists(1, occur(A,T)) :-  action(A), step(T).

% == For all
_forall'(2, h(X,0)) :- unknown(X), assumptions=1.

% == With Assumptions, define _holds/1.
_holds(h(F,0))      :- h(F,0),     assumptions=1.

% For normal
holds(X,0) :- h(initially(X),0).
holds(X,0) :- initially(X).

%=======================================
% atoms that can be assumed
_assumable(X) :- _forall'(L,X).

% guess if we assume an assumable atom
{ _assumed(X) } :- _assumable(X).

% if assumed, _holds'(X) is equivalent to _holds(X)
_holds'(X) :- _assumed(X), _holds(X).
{ _holds''(X) } :- _forall'(L,X),     _assumed(X).
_holds''(X)   :- _forall'(L,X), not _assumed(X), _holds(X).

#show _assumed/1.

%================================

:- {_assumed(_)}0.