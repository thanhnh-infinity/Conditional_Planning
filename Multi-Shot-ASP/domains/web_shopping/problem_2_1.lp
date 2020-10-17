%------------------------
%:- occur(buyItem(X,Y),I).
%:- occur(checkout(webShopTypeA),I).

%========================================================================
% Generate INPUT
initially(webShopTypeA,open).
initially(webShopTypeB,open).
initially(webShopTypeC,open).

unknown(initially(credit_card,enough_account_balance)).
unknown(initially(credit_card,available)).
unknown(initially(credit_card,invalid)).
unknown(initially(credit_card,expired)).


% Generate OUTPUT
finally(laptop,possess(client)).
finally(smart_phone,possess(client)).
finally(ai_book,possess(client)).
finally(time_magazine,possess(client)).

goal(H) :- exists(laptop,possess(client),I1),exists(smart_phone,possess(client),I2), exists(time_magazine,possess(client),I3), exists(ai_book,possess(client),I4), H = #max{I1;I2;I3;I4}, H <= n.