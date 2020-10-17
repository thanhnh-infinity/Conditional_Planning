:- 2 { _assumed(h(initially(resource_FreeText,_),0)) }.

%==========================================================

#const n=10.

% Initial State : Classical Planning

%initially(resource_FreeText,plain_text).

initially(phylomatic_method,string).

% Initial State : Incomplete information
unknown(initially(resource_FreeText,raw_text)).
unknown(initially(resource_FreeText,encoded_text)).
unknown(initially(resource_FreeText,plain_text)).
unknown(initially(resource_FreeText,ascii)).
unknown(initially(resource_FreeText,binary)).


% unknowns


% Goal State : .
finally(resource_speciesTree_with_BranchLengths,newickTree).
finally(resource_metadata_tree_scaling,list_of_strings).
goal(M) :- exists(resource_speciesTree_with_BranchLengths,newickTree,I), step(I), 
           exists(resource_metadata_tree_scaling,list_of_strings,J), step(J),
           M = #max{I,J}.