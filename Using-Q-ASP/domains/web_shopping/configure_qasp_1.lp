#include "./composition/extra.lp".

#const assumptions=0.

%==== possible initial situations

%1{h(X,0):unknown(X)}1.
%h(X,0) :- _assumed(h(X,0)).

{ h(initially(R,DF_R),0) } :- unknown(initially(R,DF_R)).

%{ h(X,0) } :- unknown(X).

%==== quantification

% == Exists
_exists(1, occur(A,T)) :-  operation(A), step(T).

% == For all
_forall (2, h(X,0)) :- unknown(X), assumptions=0.
_forall'(2, h(X,0)) :- unknown(X), assumptions=1.

% == With Assumptions, define _holds/1.
_holds(h(F,0))      :- h(F,0),     assumptions=1.

%===== More : Cho nay can xem them
exists(R,DF_R,0) :- h(initially(R,DF_R),0).

% ===== Constraints for assumptions : with assumptions over unknown fluents, allow only one assumption
%:- 2 { _assumed(X) },              assumptions=1.
%:- _assumed(h(initially(X,Y),0)), _assumed(h(initially(X,Z),0)), Y!=Z, assumptions=1.


% display
#show _exists/2.
#show _forall/2.
#show _forall'/2.
#show _holds/2.
#show occur/2.
#show h/2.
#show fortesting/1.
