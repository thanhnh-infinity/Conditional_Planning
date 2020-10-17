%========================================================================
% PLANNING PART : Build WorkFlow for SINGLE LEVEL OF PLANNING
%========================================================================
%#const n = 1.
%#const n = 6.
%#const n = 9.
%#const n = 8.
%#const n = 10.
%#const n = 11.
%#const n = 20.
%#const n = 12.
step(0..n).
%========================================================================
% 1. PLANNING ENGINE - BASIC PART
%========================================================================
% Basic part : individual R exists at the time moment 0. R is a resource class
exists(R, DF_R, 0) :- initially(R,DF_R),
                      class(R),
                      subClass(R,phylotastic_resources).

% Basic part : Encode operation A can be executed at time T
{executable(A,T)} :- operation(A),
                     step(T),
                     mean_op(A).

:- executable(A,T), 
   instance_has_input(A,N,I), 
   instance_operation_has_input_has_data_format(A,I,DF_I), 
   not good_match(A,I,DF_I,T).


good_match(A,I,DF_I,T) :- match(A,I,DF_I,T,_,_,_).

possible_match(A,I,DF_I,T,O,DF_O,T1) :- operation(A),
                                        instance_has_input(A,N,I),
                                        instance_operation_has_input_has_data_format(A,I,DF_I),
                                        T1 <= T,
                                        exists(O,DF_O,T1),
                                        subClass(O,I),
                                        subClass(DF_O,DF_I),
                                        step(T1),step(T).


key(T,T1) :- possible_match(A,I,DF_I,T,O,DF_O,T1).

1{match(A,I,DF_I,T,O,DF_O,T1):possible_match(A,I,DF_I,T,O,DF_O,T1)}1 :- key(T,T1).
%1{match(A,I,DF_I,T,O,DF_O,T1):possible_match(A,I,DF_I,T,O,DF_O,T1)}1 :- step(T).
%1{match(A,I,DF_I,T,O,DF_O,T1):possible_match(A,I,DF_I,T,O,DF_O,T1)}1.

-occur(A,I) :- not occur(A,I),
               step(I),
               operation(A).

% Basic part : generate a possible sequence of operations and records the effects of operations,
1{ occur(A,T): operation(A)}1 :- step(T), not goal(T), T <= n.
:- occur(A,T), not executable(A,T).
exists(O,DF_O,T+1) :- occur(A,T), 
                      instance_operation_has_output_has_data_format(A,O,DF_O),
                      instance_has_output(A,N,O), 
                      step(T).

% Basic part : AWC for operation
:- operation(A1), operation(A2), occur(A1,I), occur(A2,I), A1 != A2, step(I).

% Real Map for Graph and Support display rules
map(A,I,DF_I,T,B,O,DF_O,T1) :- occur(A,T),
                               instance_has_input(A,N2,I),
                               instance_operation_has_input_has_data_format(A,I,DF_I),
                               occur(B,T1-1),
                               instance_has_output(B,N1,O),
                               instance_operation_has_output_has_data_format(B,O,DF_O),
                               A != B,
                               T >= T1,
                               T1 > 0,
                               match(A,I,DF_I,T,O,DF_O,T1).
map(A,I,DF_I,T,initial_state,O,DF_O,0) :- occur(A,T),
                                          instance_has_input(A,N1,I),
                                          instance_operation_has_input_has_data_format(A,I,DF_I),
                                          match(A,I,DF_I,T,O,DF_O,0).

operation_has_input_has_data_format(A,I,DF_I) :- instance_operation_has_input_has_data_format(A,I,DF_I), 
                                                 occur(A,T),
                                                 goal(G),
                                                 T < G.
operation_has_output_has_data_format(A,O,DF_O) :- instance_operation_has_output_has_data_format(A,O,DF_O), 
                                                 occur(A,T),
                                                 goal(G),
                                                 T < G.

%========================================================================
% Basic Part : Goal Tracker 2
success :- goal(I), I <= n, step(I).
:- not success.
%stop_index(X) :- X = #min{G : goal(G)}.
%========================================================================
% 2. PLANNING ENGINE - EXTEND PART - PREFERENCE
%       Define rules for operation class shoud be involved
%       Define rules for ordering of services
%       Define rules for concrete operation should be involved
%       Define rules for DO NOT involve FAIL operation/service
%========================================================================
% Extend part : Rules for required concrete operation shoud be involved
is_used_operation(A) :- operation(A),
                        occur(A,T),
                        goal(G),
                        T < G.
:- used_operation(A), 
   not is_used_operation(A). 

:- used_operation(A), 
   not match(A,_,_,_,_,_,_).                       

:- used_operation(X),
   not map(_,_,_,_,X,_,_,_).
   

% Extend part : avoidance concrete operation
:- do_not_use_operation(X), is_used_operation(X).

% Extend Part : Require involved operation C executed before operation D
%%%% Super poor performance

%is_ordered_services(C,D) :- operation(C),
%                            operation(D),
%                            occur(C,T1),
%                            occur(D,T2),
%                            goal(G),
%                            T1 < T2,
%                            T2 < G.

%:- ordered_services(C,D), not is_ordered_services(C,D).
%used_operation(C) :- ordered_services(C,D), 
%                     operation(C).
%used_operation(D) :- ordered_services(C,D), 
%                     operation(C).
% Them vao thoi nhung la SAI - DIFFRENCE WITH ORIGIN
:- occur(X,T1), occur(X,T2), T1 != T2.
%========================================================================
% Basic part : initial and goal state (SHOULD BE IN DIFFERENT FILES - INIITAL and GOAL FILES)
%========================================================================
%#show occur/2.
%#show map/8.
%#show executable/2.
%#show exists/3.
%#show executable/2.
%#show final_df/2.
%#show match/7.
%#show good_match/4.
%#show possible_match/7.
%#show operation_has_output_has_data_format/3.
%#show operation_has_input_has_data_format/3.
%#show score_qos_workflow/1.
%#show goal/1.