:- 2 { _assumed(h(initially(webShopTypeC,_),0)) }, assumptions=1.

%========================================================================
% Generate INPUT
unknown(initially(webShopTypeC,close)).
unknown(initially(webShopTypeC,open)).
unknown(initially(webShopTypeC,close_permanently)).
unknown(initially(webShopTypeC,out_of_stock)).

%unknown(initially(credit_card,enough_account_balance)).
%unknown(initially(credit_card,available)).
%unknown(initially(credit_card,not_available)).
%unknown(initially(credit_card,invalid)).
%unknown(initially(credit_card,not_enough_account_balance)).
%unknown(initially(credit_card,expired)).

initially(deposite_cash,available).
initially(credit_card,enough_account_balance).

% Generate OUTPUT
finally(beer,possess(client)).
finally(bread,possess(client)).
goal(H) :- exists(beer,possess(client),I1),exists(bread,possess(client),I2), H = #max{I1;I2}, H <= n.
