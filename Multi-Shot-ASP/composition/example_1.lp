:- 2 { _assumed(h(initially(resource_FreeText,_),0)) }, assumptions=1.

%========================================================
#const n=9.

% Initial State : Classical Planning
%initially(resource_FreeText,raw_text).
%initially(resource_FreeText,plain_text).

% unknowns
unknown(initially(resource_FreeText,raw_text)).
unknown(initially(resource_FreeText,encoded_text)).
unknown(initially(resource_FreeText,plain_text)).
unknown(initially(resource_FreeText,ascii)).
unknown(initially(resource_FreeText,binary)).


% Goal State : .
finally(resource_speciesTree,newickTree).
goal(I) :- exists(resource_speciesTree,newickTree,I), step(I).