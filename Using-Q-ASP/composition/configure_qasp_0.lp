%==== possible initial situations

1{h(X,0):unknown(X)}1.

%{h(X,0)} :- unknown(X).

%{h1(X,0)} :- test(X).

%==== quantification

% ==== Exists
_exists(1, occur(A,T)) :-  operation(A), step(T).

% Different level exists
_exists(3, h(X,0)) :- unknown(X).

% Same level exists
%_exists(1, h(X,0)) :- unknown(X).

% ==== For all
%_forall(2, h(X,0)) :- unknown(X).
%_forall(2, h1(X,0)) :- test(X).

%===== More
exists(R,DF_R,0) :- h(initially(R,DF_R),0).

% display
#show _exists/2.
#show _forall/2.
#show _quantify/2.
#show occur/2.
#show h/2.
#show h1/2.
#show exists/3.
#show fortesting/1.
