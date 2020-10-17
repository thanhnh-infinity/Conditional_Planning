#include "./composition/conditional_planning.lp".

#const assumptions=0.

%==== possible initial situations

{ h(initially(R,DF_R),0) } :- unknown(initially(R,DF_R)).

%===== More
exists(R,DF_R,0) :- h(initially(R,DF_R),0).

% ===== Constraints for assumptions : with assumptions over unknown fluents, allow only one assumption
:- 2 { _assumed(X) },                    assumptions=1.
:- _assumed(h(F,0)), occur(sense(F),_),  assumptions=1.

% with assumptions over action occurrences, inforce at least 4
:- _assumed(occur(A,T)), not occur(A,T),               assumptions=2.
:- #sum{ 1,A,T : _assumed(occur(A,T)), occur(A,T) } 3, assumptions=2.

% display
#show _exists/2.
#show _forall/2.
#show _forall'/2.
#show _holds/2.
#show occur/2.
#show sensed_true/1.
#show h/2.
