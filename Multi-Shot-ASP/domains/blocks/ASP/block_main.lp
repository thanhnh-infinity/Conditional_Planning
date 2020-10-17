%=========ONTOLOGY - DOMAIN ===================
#include "./domain_BLOCKS_1.lp".
%=========Reasoning for UNKNOWN================

#const assumptions=0.

%{ h(initially(X),0) } :- unknown(initially(X)).
holds(X,0) :- h(initially(X),0).
holds(X,0) :- initially(X).

_assumable(h(X,0)):- unknown(X).
{ _assumed(X) } :- _assumable(X).
h(initially(X),0) :-_assumed(h(initially(X),0)).

:- {occur(X,T)}0.
%==============================================
#show occur/2.
#show _assumed/1.
