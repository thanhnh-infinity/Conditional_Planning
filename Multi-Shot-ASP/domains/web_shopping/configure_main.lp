#const assumptions=0.

%==== possible initial situations
%{ h(initially(R,DF_R),0) } :- unknown(initially(R,DF_R)).

%===== More : Cho nay can xem them
exists(R,DF_R,0) :- h(initially(R,DF_R),0).

%====== Assume
_assumable(h(initially(R,DF_R),0)):- unknown(initially(R,DF_R)).
{_assumed(h(initially(R,DF_R),0)) } :- _assumable(h(initially(R,DF_R),0)).
h(initially(R,DF_R),0) :-_assumed(h(initially(R,DF_R),0)).

%==============================================
#show occur/2.
#show _assumed/1.