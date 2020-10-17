%
% conditional planning metaencoding
%

% includes
#include "./composition/extra.lp".

% constants
#const assumptions=0.

% fix sensing results
{ sensed_true(T) } :- step(T).
top(T) :- occur(sense(F),T), { sensed_true(T); h(F,T) } = 1.
top(T) :- top(T-1), step(T).
%:- bot(T), not top(T-1).

% quantify
_exists (2*T+1,      occur(A,T)) :- operation(A), step(T), assumptions!=2.
_exists'(2*T+1,      occur(A,T)) :- operation(A), step(T), assumptions =2.
_forall (2*T+2  ,sensed_true(T)) :- step(T).
_forall (2*n+2  ,        h(F,0)) :- unknown(F),         assumptions!=1.
_forall'(2*n+2  ,        h(F,0)) :- unknown(F),         assumptions =1.

% with assumptions, define _holds/1
_holds(    h(F,0)) :-     h(F,0),                         assumptions =1.
_holds(occur(A,T)) :- occur(A,T),                         assumptions =2.

% display
#show _exists/2.
#show _forall/2.
#show occur/2.
#show sensed_true/1.
#show h/2.