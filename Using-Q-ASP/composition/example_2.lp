:- 2 { _assumed(h(initially(phylomatic_method,_),0)) }, assumptions=1.

#const n=9.
%========================================================

% Initial State : Classical Planning
%initially(phylomatic_method,string).

initially(resource_FreeText,plain_text).



% unknowns
unknown(initially(phylomatic_method,string)).
unknown(initially(phylomatic_method,double)).
unknown(initially(phylomatic_method,boolean)).
unknown(initially(phylomatic_method,integer)).
unknown(initially(phylomatic_method,float)).


% Goal State : .
finally(resource_speciesTree_with_BranchLengths,newickTree).
finally(resource_metadata_tree_scaling,list_of_strings).
goal(M) :- exists(resource_speciesTree_with_BranchLengths,newickTree,I), step(I), 
           exists(resource_metadata_tree_scaling,list_of_strings,J), step(J),
           M = #max{I,J}.