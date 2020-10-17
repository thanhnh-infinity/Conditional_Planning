%=======================================================================
%PART 1 : Define classes that are used from Entity
%=======================================================================
class(shopping_thing).
subClass(shopping_thing,phylotastic_resources).

class(payment).
class(card).
class(credit_card).
class(debit_card).
class(prepaid_card).
class(cash).
class(itemPrice).

class(shopping_cart).
subClass(shopping_cart,shopping_thing).
class(cart_web_shop_A).
class(cart_web_shop_B).
subClass(cart_web_shop_A,shopping_cart).
subClass(cart_web_shop_B,shopping_cart).

subClass(payment,shopping_thing).
subClass(card,payment).
subClass(cash,payment).
subClass(check,payment).
subClass(credit_card,card).
subClass(debit_card,card).

class(deposite_cash).
subClass(deposite_cash,cash).

class(people).
class(buyer).
class(seller).
class(owner).
class(client).
class(customer).

subClass(people,shopping_thing).
subClass(buyer,people).
subClass(seller,people).
subClass(owner,people).
subClass(client,buyer).
subClass(customer,buyer).

class(item).
class(food).
class(electrical_device).
class(beverage).
class(furniture).
class(book).
class(margazine).

subClass(item,shopping_thing).
subClass(food,item).
subClass(electrical_device,item).
subClass(beverage,item).
subClass(furniture,item).
subClass(book,item).
subClass(margazine,item).

class(laptop).
class(smart_phone).
class(camera).
class(desk).
class(chair).

class(coke).
class(beer).
class(water).
class(bread).
class(butter).
class(meat).

class(ai_book).
class(programming_book).
class(os_book).
class(vogue_magazine).
class(time_magazine).
class(natural_maganize).

subClass(coke,beverage).
subClass(beer,beverage).
subClass(water,beverage).
subClass(meat,food).
subClass(bread,food).
subClass(butter,food).

subClass(ai_book,book).
subClass(programming_book,book).
subClass(os_book,book).
subClass(vogue_magazine,magazine).
subClass(time_magazine,magazine).
subClass(natural_maganize,magazine).

subClass(laptop,electrical_device).
subClass(smart_phone,electrical_device).
subClass(camera,electrical_device).
subClass(desk,furniture).
subClass(chair,furniture).

class(organization).
class(webShop).
class(webShopTypeA).
class(webShopTypeB).
class(webShopTypeC).

subClass(organization,shopping_thing).
subClass(webShop,organization).
subClass(webShopTypeA,webShop).
subClass(webShopTypeB,webShop).
subClass(webShopTypeC,webShop).


class(list_of_items).
subClass(list_of_items,resource_SetOfThings).

class(list_electrical_device_items).
class(list_food_items).
class(list_beverage_items).
class(list_furniture_items).
class(list_book_items).
class(list_magazine_items).
class(list_items_in_shop).

subClass(list_electrical_device_items,list_of_items).
subCLass(list_food_items,list_of_items).
subClass(list_beverage_items,list_of_items).
subClass(list_furniture_items,list_of_items).
subClass(list_book_items,list_of_items).
subClass(list_magazine_items,list_of_items).
subClass(list_items_in_shop,list_of_items).


%------------ DATA FORMAT - STATUS SHOPPING CART ----------------------%

class(shopping_format).
subClass(shopping_format,shopping_thing).

class(open).
class(available).
class(not_empty).

class(close).
class(out_of_stock).
class(close_permanently).

class(on_cart).
class(on_cart(webShop_A)).
class(on_cart(webShop_B)).

class(in_items_list).
class(in_items_list(list_electrical_device_items)).
class(in_items_list(list_beverage_items)).
class(in_items_list(list_furniture_items)).
class(in_items_list(list_food_items)).
class(in_items_list(list_book_items)).
class(in_items_list(list_magazine_items)).
class(in_items_list(list_items_in_shop)).

subClass(on_cart(webShop_A),on_cart).
subClass(on_cart(webShop_B),on_cart).

class(account_balance).
class(enough_account_balance).
class(not_enough_account_balance).
class(expired).
class(not_available).
class(invalid).

subClass(enough_account_balance,account_balance).
subClass(not_enough_account_balance, account_balance).

itemInList(laptop,list_electrical_device_items).
itemInList(smart_phone,list_electrical_device_items).
itemInList(camera,list_electrical_device_items).
itemInList(desk,list_furniture_items).
itemInList(chair,list_furniture_items).
itemInList(coke,list_items_in_shop).
itemInList(beer,list_items_in_shop).
itemInList(water,list_items_in_shop).
itemInList(meat,list_items_in_shop).
itemInList(bread,list_items_in_shop).
itemInList(butter,list_items_in_shop).
itemInList(ai_book,list_book_items).
itemInList(programming_book,list_book_items).
itemInList(os_book,list_book_items).
itemInList(time_magazine,list_magazine_items).
itemInList(vogue_magazine,list_magazine_items).
itemInList(natural_maganize,list_magazine_items).

%=======================================================================
%PART 2 : Define classes + instances are defined Operation
%=======================================================================
% Define class of operation
class(get_list_operation).
class(add_to_cart_operation).
class(remove_from_cart_operation).
class(checkout_operation).

class(buy_item_operation).
class(get_price_operation).
class(get_item_list_operation).
class(item_status_operation).
class(credit_card_operation).
class(shop_operation).
class(account_operation).

% Define subclass of operation
class(shopping_operation).

subClass(shopping_operation,operationClassification).

subClass(get_list_operation,shopping_operation).
subClass(add_to_cart_operation,shopping_operation).
subClass(remove_from_cart_operation,shopping_operation).
subClass(checkout_operation,shopping_operation).
subClass(buy_item_operation,shopping_operation).
subClass(get_price_operation,shopping_operation).
subClass(get_item_list_operation,shopping_operation).
subClass(item_status_operation,shopping_operation).
subClass(credit_card_operation,shopping_operation).
subClass(account_operation,shopping_operation).
subClass(shop_operation,shopping_operation).

%========================================================================
% PART 3 :  Instance of operations classes
%========================================================================
instance(getItemsList(webShopTypeA)).
instance(getItemsList(webShopTypeB)).

instance(getList(webShopTypeC)).

instance(addToCart(laptop)).
instance(addToCart(camera)).
instance(addToCart(smart_phone)).
instance(addToCart(desk)).
instance(addToCart(chair)).

instance(addToCart(ai_book)).
instance(addToCart(programming_book)).
instance(addToCart(os_book)).
instance(addToCart(time_magazine)).
instance(addToCart(natural_maganize)).
instance(addToCart(vogue_magazine)).

instance(removeFromCart(laptop)).
instance(removeFromCart(camera)).
instance(removeFromCart(smart_phone)).
instance(removeFromCart(desk)).
instance(removeFromCart(chair)).

instance(removeFromCart(ai_book)).
instance(removeFromCart(programming_book)).
instance(removeFromCart(os_book)).
instance(removeFromCart(time_magazine)).
instance(removeFromCart(natural_maganize)).
instance(removeFromCart(vogue_magazine)).

instance(checkout(webShopTypeA)).
instance(checkout(webShopTypeB)).

instance(buyItem(laptop,webShop_A)).
instance(buyItem(camera,webShop_A)).
instance(buyItem(smart_phone,webShop_A)).
instance(buyItem(desk,webShop_A)).
instance(buyItem(chair,webShop_A)).

instance(buyItem(coke,webShop_C)).
instance(buyItem(beer,webShop_C)).
instance(buyItem(water,webShop_C)).
instance(buyItem(bread,webShop_C)).
instance(buyItem(butter,webShop_C)).
instance(buyItem(meat,webShop_C)).


instance(getPrice(laptop)).
instance(getPrice(camera)).
instance(getPrice(smart_phone)).
instance(getPrice(desk)).
instance(getPrice(chair)).

instance(getPrice(coke)).
instance(getPrice(beer)).
instance(getPrice(water)).
instance(getPrice(bread)).
instance(getPrice(butter)).
instance(getPrice(meat)).

instance(getPrice_Cart(cart_web_shop_A)).
instance(getPrice_Cart(cart_web_shop_B)).

instance(checkAvailability(laptop)).
instance(checkAvailability(camera)).
instance(checkAvailability(smart_phone)).
instance(checkAvailability(desk)).
instance(checkAvailability(chair)).

instance(checkAvailability(coke)).
instance(checkAvailability(beer)).
instance(checkAvailability(water)).
instance(checkAvailability(bread)).
instance(checkAvailability(butter)).
instance(checkAvailability(meat)).

instance(checkAvailability(ai_book)).
instance(checkAvailability(programming_book)).
instance(checkAvailability(natural_maganize)).
instance(checkAvailability(os_book)).
instance(checkAvailability(time_magazine)).
instance(checkAvailability(vogue_magazine)).

instance(depositeAccountBalance).
instance(changeCreditCardOInfo).

instance(sendMessageAlert(webShop_C)).
instance(waitItems(webShop_C)).

isInstanceOf_immediate(getItemsList(webShopTypeB),get_item_list_operation).
isInstanceOf_immediate(getItemsList(webShopTypeA),get_item_list_operation).
isInstanceOf_immediate(getList(webShopTypeC),get_item_list_operation).

isInstanceOf_immediate(addToCart(laptop),add_to_cart_operation).
isInstanceOf_immediate(addToCart(camera),add_to_cart_operation).
isInstanceOf_immediate(addToCart(smart_phone),add_to_cart_operation).
isInstanceOf_immediate(addToCart(desk),add_to_cart_operation).
isInstanceOf_immediate(addToCart(chair),add_to_cart_operation).

isInstanceOf_immediate(addToCart(ai_book),add_to_cart_operation).
isInstanceOf_immediate(addToCart(programming_book),add_to_cart_operation).
isInstanceOf_immediate(addToCart(os_book),add_to_cart_operation).
isInstanceOf_immediate(addToCart(time_magazine),add_to_cart_operation).
isInstanceOf_immediate(addToCart(vogue_magazine),add_to_cart_operation).
isInstanceOf_immediate(addToCart(natural_maganize),add_to_cart_operation).

isInstanceOf_immediate(removeFromCart(laptop),remove_from_cart_operation).
isInstanceOf_immediate(removeFromCart(camera),remove_from_cart_operation).
isInstanceOf_immediate(removeFromCart(smart_phone),remove_from_cart_operation).
isInstanceOf_immediate(removeFromCart(desk),remove_from_cart_operation).
isInstanceOf_immediate(removeFromCart(chair),remove_from_cart_operation).

isInstanceOf_immediate(removeFromCart(ai_book),remove_from_cart_operation).
isInstanceOf_immediate(removeFromCart(programming_book),remove_from_cart_operation).
isInstanceOf_immediate(removeFromCart(os_book),remove_from_cart_operation).
isInstanceOf_immediate(removeFromCart(time_magazine),remove_from_cart_operation).
isInstanceOf_immediate(removeFromCart(vogue_magazine),remove_from_cart_operation).
isInstanceOf_immediate(removeFromCart(natural_maganize),remove_from_cart_operation).

isInstanceOf_immediate(checkout(webShopTypeA),checkout_operation).
isInstanceOf_immediate(checkout(webShopTypeB),checkout_operation).

isInstanceOf_immediate(buyItem(laptop,webShop_A),buy_item_operation).
isInstanceOf_immediate(buyItem(camera,webShop_A),buy_item_operation).
isInstanceOf_immediate(buyItem(smart_phone,webShop_A),buy_item_operation).
isInstanceOf_immediate(buyItem(desk,webShop_A),buy_item_operation).
isInstanceOf_immediate(buyItem(chair,webShop_A),buy_item_operation).

isInstanceOf_immediate(buyItem(coke,webShop_C),buy_item_operation).
isInstanceOf_immediate(buyItem(beer,webShop_C),buy_item_operation).
isInstanceOf_immediate(buyItem(water,webShop_C),buy_item_operation).
isInstanceOf_immediate(buyItem(bread,webShop_C),buy_item_operation).
isInstanceOf_immediate(buyItem(meat,webShop_C),buy_item_operation).
isInstanceOf_immediate(buyItem(butter,webShop_C),buy_item_operation).

isInstanceOf_immediate(getPrice(laptop),get_price_operation).
isInstanceOf_immediate(getPrice(camera),get_price_operation).
isInstanceOf_immediate(getPrice(smart_phone),get_price_operation).
isInstanceOf_immediate(getPrice(desk),get_price_operation).
isInstanceOf_immediate(getPrice(chair),get_price_operation).

isInstanceOf_immediate(getPrice(coke),get_price_operation).
isInstanceOf_immediate(getPrice(beer),get_price_operation).
isInstanceOf_immediate(getPrice(water),get_price_operation).
isInstanceOf_immediate(getPrice(bread),get_price_operation).
isInstanceOf_immediate(getPrice(butter),get_price_operation).
isInstanceOf_immediate(getPrice(meat),get_price_operation).

isInstanceOf_immediate(getPrice_Cart(cart_web_shop_A),get_price_operation).
isInstanceOf_immediate(getPrice_Cart(cart_web_shop_B),get_price_operation).

isInstanceOf_immediate(checkAvailability(laptop),item_status_operation).
isInstanceOf_immediate(checkAvailability(camera),item_status_operation).
isInstanceOf_immediate(checkAvailability(smart_phone),item_status_operation).
isInstanceOf_immediate(checkAvailability(desk),item_status_operation).
isInstanceOf_immediate(checkAvailability(chair),item_status_operation).

isInstanceOf_immediate(checkAvailability(coke),item_status_operation).
isInstanceOf_immediate(checkAvailability(beer),item_status_operation).
isInstanceOf_immediate(checkAvailability(water),item_status_operation).
isInstanceOf_immediate(checkAvailability(bread),item_status_operation).
isInstanceOf_immediate(checkAvailability(butter),item_status_operation).
isInstanceOf_immediate(checkAvailability(meat),item_status_operation).

isInstanceOf_immediate(checkAvailability(ai_book),item_status_operation).
isInstanceOf_immediate(checkAvailability(programming_book),item_status_operation).
isInstanceOf_immediate(checkAvailability(os_book),item_status_operation).
isInstanceOf_immediate(checkAvailability(time_magazine),item_status_operation).
isInstanceOf_immediate(checkAvailability(vogue_magazine),item_status_operation).
isInstanceOf_immediate(checkAvailability(natural_maganize),item_status_operation).

isInstanceOf_immediate(depositeAccountBalance,account_operation).
isInstanceOf_immediate(changeCreditCardOInfo,credit_card_operation).

isInstanceOf_immediate(sendMessageAlert(webShop_C),shop_operation).
isInstanceOf_immediate(waitItems(webShop_C),shop_operation).

%========================================================================
% PART 4.1 :  Define hierarchy classes of DATA FORMAT
%           Define which instance operation has DATA FORMAT of INPUT/Output
%========================================================================
% Shop operations
instance_has_input(sendMessageAlert(webShop_C),shop_C,webShopTypeC).
instance_has_output(sendMessageAlert(webShop_C),shop_C,webShopTypeC).

instance_operation_has_input_has_data_format(sendMessageAlert(webShop_C),webShopTypeC,close).
instance_operation_has_output_has_data_format(sendMessageAlert(webShop_C),webShopTypeC,open).


% Account operations
instance_has_input(depositeAccountBalance,card_1,credit_card).
%instance_has_input(depositeAccountBalance,money_1,deposite_cash).
instance_has_output(depositeAccountBalance,card_1,credit_card).

instance_operation_has_input_has_data_format(depositeAccountBalance,credit_card,not_enough_account_balance).
%instance_operation_has_input_has_data_format(depositeAccountBalance,deposite_cash,available).
instance_operation_has_output_has_data_format(depositeAccountBalance,credit_card,enough_account_balance).

% Get list items operation

instance_has_input(getItemsList(webShopTypeA),shop_A,webShopTypeA).
instance_operation_has_input_has_data_format(getItemsList(webShopTypeA),webShopTypeA,open).
instance_has_output(getItemsList(webShopTypeA),list_1,list_electrical_device_items).
instance_has_output(getItemsList(webShopTypeA),list_2,list_furniture_items).
instance_operation_has_output_has_data_format(getItemsList(webShopTypeA),list_electrical_device_items,list_of_items).
instance_operation_has_output_has_data_format(getItemsList(webShopTypeA),list_furniture_items,list_of_items).

instance_has_input(getItemsList(webShopTypeB),shop_B,webShopTypeB).
instance_operation_has_input_has_data_format(getItemsList(webShopTypeB),webShopTypeB,open).
instance_has_output(getItemsList(webShopTypeB),list_1,list_book_items).
instance_has_output(getItemsList(webShopTypeB),list_2,list_magazine_items).
instance_operation_has_output_has_data_format(getItemsList(webShopTypeB),list_book_items,list_of_items).
instance_operation_has_output_has_data_format(getItemsList(webShopTypeB),list_magazine_items,list_of_items).

instance_has_input(getList(webShopTypeC),shop_C,webShopTypeC).
instance_operation_has_input_has_data_format(getList(webShopTypeC),webShopTypeC,open).
instance_has_output(getList(webShopTypeC),list_1,list_items_in_shop).
instance_operation_has_output_has_data_format(getList(webShopTypeC),list_items_in_shop,list_of_items).


% Add to Cart Operation

instance_has_input(addToCart(laptop),list_1,list_electrical_device_items).
instance_operation_has_input_has_data_format(addToCart(laptop),list_electrical_device_items,list_of_items).
instance_has_output(addToCart(laptop),laptop_1,laptop).
instance_has_output(addToCart(laptop),cart_1,cart_web_shop_A).
instance_operation_has_output_has_data_format(addToCart(laptop),laptop,on_cart(webShop_A)).
instance_operation_has_output_has_data_format(addToCart(laptop),cart_web_shop_A,not_empty).

instance_has_input(addToCart(camera),list_1,list_electrical_device_items).
instance_operation_has_input_has_data_format(addToCart(camera),list_electrical_device_items,list_of_items).
instance_has_output(addToCart(camera),camera_1,camera).
instance_has_output(addToCart(camera),cart_1,cart_web_shop_A).
instance_operation_has_output_has_data_format(addToCart(camera),camera,on_cart(webShop_A)).
instance_operation_has_output_has_data_format(addToCart(camera),cart_web_shop_A,not_empty).

instance_has_input(addToCart(smart_phone),list_1,list_electrical_device_items).
instance_operation_has_input_has_data_format(addToCart(smart_phone),list_electrical_device_items,list_of_items).
instance_has_output(addToCart(smart_phone),phone_1,smart_phone).
instance_has_output(addToCart(smart_phone),cart_1,cart_web_shop_A).
instance_operation_has_output_has_data_format(addToCart(smart_phone),smart_phone,on_cart(webShop_A)).
instance_operation_has_output_has_data_format(addToCart(smart_phone),cart_web_shop_A,not_empty).

instance_has_input(addToCart(desk),list_1,list_furniture_items).
instance_operation_has_input_has_data_format(addToCart(desk),list_furniture_items,list_of_items).
instance_has_output(addToCart(desk),desk_1,desk).
instance_has_output(addToCart(desk),cart_1,cart_web_shop_A).
instance_operation_has_output_has_data_format(addToCart(desk),desk,on_cart(webShop_A)).
instance_operation_has_output_has_data_format(addToCart(desk),cart_web_shop_A,not_empty).

instance_has_input(addToCart(chair),list_1,list_furniture_items).
instance_operation_has_input_has_data_format(addToCart(chair),list_furniture_items,list_of_items).
instance_has_output(addToCart(chair),chair_1,chair).
instance_has_output(addToCart(chair),cart_1,cart_web_shop_A).
instance_operation_has_output_has_data_format(addToCart(chair),chair,on_cart(webShop_A)).
instance_operation_has_output_has_data_format(addToCart(chair),cart_web_shop_A,not_empty).

instance_has_input(addToCart(ai_book),list_1,list_book_items).
instance_operation_has_input_has_data_format(addToCart(ai_book),list_book_items,list_of_items).
instance_has_output(addToCart(ai_book),ai_book_1,ai_book).
instance_has_output(addToCart(ai_book),cart_1,cart_web_shop_B).
instance_operation_has_output_has_data_format(addToCart(ai_book),ai_book,on_cart(webShop_B)).
instance_operation_has_output_has_data_format(addToCart(ai_book),cart_web_shop_B,not_empty).

instance_has_input(addToCart(programming_book),list_1,list_book_items).
instance_operation_has_input_has_data_format(addToCart(programming_book),list_book_items,list_of_items).
instance_has_output(addToCart(programming_book),programming_book_1,programming_book).
instance_has_output(addToCart(programming_book),cart_1,cart_web_shop_B).
instance_operation_has_output_has_data_format(addToCart(programming_book),programming_book,on_cart(webShop_B)).
instance_operation_has_output_has_data_format(addToCart(programming_book),cart_web_shop_B,not_empty).

instance_has_input(addToCart(os_book),list_1,list_book_items).
instance_operation_has_input_has_data_format(addToCart(os_book),list_book_items,list_of_items).
instance_has_output(addToCart(os_book),os_book_1,os_book).
instance_has_output(addToCart(os_book),cart_1,cart_web_shop_B).
instance_operation_has_output_has_data_format(addToCart(os_book),os_book,on_cart(webShop_B)).
instance_operation_has_output_has_data_format(addToCart(os_book),cart_web_shop_B,not_empty).

instance_has_input(addToCart(time_magazine),list_1,list_magazine_items).
instance_operation_has_input_has_data_format(addToCart(time_magazine),list_magazine_items,list_of_items).
instance_has_output(addToCart(time_magazine),time_magazine_1,time_magazine).
instance_has_output(addToCart(time_magazine),cart_1,cart_web_shop_B).
instance_operation_has_output_has_data_format(addToCart(time_magazine),time_magazine,on_cart(webShop_B)).
instance_operation_has_output_has_data_format(addToCart(time_magazine),cart_web_shop_B,not_empty).

instance_has_input(addToCart(vogue_magazine),list_1,list_magazine_items).
instance_operation_has_input_has_data_format(addToCart(vogue_magazine),list_magazine_items,list_of_items).
instance_has_output(addToCart(vogue_magazine),time_magazine_1,vogue_magazine).
instance_has_output(addToCart(vogue_magazine),cart_1,cart_web_shop_B).
instance_operation_has_output_has_data_format(addToCart(vogue_magazine),vogue_magazine,on_cart(webShop_B)).
instance_operation_has_output_has_data_format(addToCart(vogue_magazine),cart_web_shop_B,not_empty).

instance_has_input(addToCart(natural_maganize),list_1,list_magazine_items).
instance_operation_has_input_has_data_format(addToCart(natural_maganize),list_magazine_items,list_of_items).
instance_has_output(addToCart(natural_maganize),time_magazine_1,natural_maganize).
instance_has_output(addToCart(natural_maganize),cart_1,cart_web_shop_B).
instance_operation_has_output_has_data_format(addToCart(natural_maganize),natural_maganize,on_cart(webShop_B)).
instance_operation_has_output_has_data_format(addToCart(natural_maganize),cart_web_shop_B,not_empty).

% Check Out Operation

instance_has_input(checkout(webShopTypeA),cart_1,cart_web_shop_A).
instance_has_input(checkout(webShopTypeA),card_1,credit_card).
instance_operation_has_input_has_data_format(checkout(webShopTypeA),cart_web_shop_A,not_empty).
instance_operation_has_input_has_data_format(checkout(webShopTypeA),credit_card,enough_account_balance).
instance_has_output(checkout(webShopTypeA),cart_1,cart_web_shop_A).
instance_operation_has_output_has_data_format(checkout(webShopTypeA),cart_web_shop_A,paid).

instance_has_input(checkout(webShopTypeB),cart_1,cart_web_shop_B).
instance_has_input(checkout(webShopTypeB),card_1,credit_card).

instance_operation_has_input_has_data_format(checkout(webShopTypeB),cart_web_shop_B,not_empty).
instance_operation_has_input_has_data_format(checkout(webShopTypeB),credit_card,enough_account_balance).

instance_has_output(checkout(webShopTypeB),cart_1,cart_web_shop_B).

instance_operation_has_output_has_data_format(checkout(webShopTypeB),cart_web_shop_B,paid).

% Buy Item Operation

%instance_has_input(buyItem(laptop,webShop_A),list_1,list_electrical_device_items).
instance_has_input(buyItem(laptop,webShop_A),laptop_1,laptop).
instance_has_input(buyItem(laptop,webShop_A),card_1,credit_card).
%instance_operation_has_input_has_data_format(buyItem(laptop,webShop_A),list_electrical_device_items,list_of_items).
instance_operation_has_input_has_data_format(buyItem(laptop,webShop_A),laptop,in_items_list(list_electrical_device_items)).
instance_operation_has_input_has_data_format(buyItem(laptop,webShop_A),credit_card,enough_account_balance).

instance_has_output(buyItem(laptop,webShop_A),laptop_1,laptop).
instance_operation_has_output_has_data_format(buyItem(laptop,webShop_A),laptop,possess(client)).

%instance_has_input(buyItem(smart_phone,webShop_A),list_1,list_electrical_device_items).
instance_has_input(buyItem(smart_phone,webShop_A),phone_1,smart_phone).
instance_has_input(buyItem(smart_phone,webShop_A),card_1,credit_card).

%instance_operation_has_input_has_data_format(buyItem(smart_phone,webShop_A),list_electrical_device_items,list_of_items).
instance_operation_has_input_has_data_format(buyItem(smart_phone,webShop_A),smart_phone,in_items_list(list_electrical_device_items)).
instance_operation_has_input_has_data_format(buyItem(smart_phone,webShop_A),credit_card,enough_account_balance).

instance_has_output(buyItem(smart_phone,webShop_A),smart_phone_1,smart_phone).
instance_operation_has_output_has_data_format(buyItem(smart_phone,webShop_A),smart_phone,possess(client)).

instance_has_input(buyItem(camera,webShop_A),camera_1,camera).
instance_has_input(buyItem(camera,webShop_A),card_1,credit_card).
instance_operation_has_input_has_data_format(buyItem(camera,webShop_A),camera,in_items_list(list_electrical_device_items)).
instance_operation_has_input_has_data_format(buyItem(camera,webShop_A),credit_card,enough_account_balance).
instance_has_output(buyItem(camera,webShop_A),camera_1,camera).
instance_operation_has_output_has_data_format(buyItem(camera,webShop_A),camera,possess(client)).

instance_has_input(buyItem(desk,webShop_A),desk_1,desk).
instance_has_input(buyItem(desk,webShop_A),card_1,credit_card).
instance_operation_has_input_has_data_format(buyItem(desk,webShop_A),desk,in_items_list(list_furniture_items)).
instance_operation_has_input_has_data_format(buyItem(desk,webShop_A),credit_card,enough_account_balance).
instance_has_output(buyItem(desk,webShop_A),desk_1,desk).
instance_operation_has_output_has_data_format(buyItem(desk,webShop_A),desk,possess(client)).

instance_has_input(buyItem(chair,webShop_A),chair_1,chair).
instance_has_input(buyItem(chair,webShop_A),card_1,credit_card).
instance_operation_has_input_has_data_format(buyItem(chair,webShop_A),chair,in_items_list(list_furniture_items)).
instance_operation_has_input_has_data_format(buyItem(chair,webShop_A),credit_card,enough_account_balance).
instance_has_output(buyItem(chair,webShop_A),chair_1,chair).
instance_operation_has_output_has_data_format(buyItem(chair,webShop_A),chair,possess(client)).

instance_has_input(buyItem(beer,webShop_C),beer_1,beer).
instance_has_input(buyItem(beer,webShop_C),card_1,credit_card).
instance_operation_has_input_has_data_format(buyItem(beer,webShop_C),beer,in_items_list(list_items_in_shop)).
instance_operation_has_input_has_data_format(buyItem(beer,webShop_C),credit_card,enough_account_balance).
instance_has_output(buyItem(beer,webShop_C),beer_1,beer).
instance_operation_has_output_has_data_format(buyItem(beer,webShop_C),beer,possess(client)).

instance_has_input(buyItem(coke,webShop_C),coke_1,coke).
instance_has_input(buyItem(coke,webShop_C),card_1,credit_card).
instance_operation_has_input_has_data_format(buyItem(coke,webShop_C),coke,in_items_list(list_items_in_shop)).
instance_operation_has_input_has_data_format(buyItem(coke,webShop_C),credit_card,enough_account_balance).
instance_has_output(buyItem(coke,webShop_C),coke_1,coke).
instance_operation_has_output_has_data_format(buyItem(coke,webShop_C),coke,possess(client)).

instance_has_input(buyItem(water,webShop_C),water_1,water).
instance_has_input(buyItem(water,webShop_C),card_1,credit_card).
instance_operation_has_input_has_data_format(buyItem(water,webShop_C),water,in_items_list(list_items_in_shop)).
instance_operation_has_input_has_data_format(buyItem(water,webShop_C),credit_card,enough_account_balance).
instance_has_output(buyItem(water,webShop_C),water_1,water).
instance_operation_has_output_has_data_format(buyItem(water,webShop_C),water,possess(client)).

instance_has_input(buyItem(bread,webShop_C),bread_1,bread).
instance_has_input(buyItem(bread,webShop_C),card_1,credit_card).
instance_operation_has_input_has_data_format(buyItem(bread,webShop_C),bread,in_items_list(list_items_in_shop)).
instance_operation_has_input_has_data_format(buyItem(bread,webShop_C),credit_card,enough_account_balance).
instance_has_output(buyItem(bread,webShop_C),bread_1,bread).
instance_operation_has_output_has_data_format(buyItem(bread,webShop_C),bread,possess(client)).

instance_has_input(buyItem(meat,webShop_C),meat_1,meat).
instance_has_input(buyItem(meat,webShop_C),card_1,credit_card).
instance_operation_has_input_has_data_format(buyItem(meat,webShop_C),meat,in_items_list(list_items_in_shop)).
instance_operation_has_input_has_data_format(buyItem(meat,webShop_C),credit_card,enough_account_balance).
instance_has_output(buyItem(meat,webShop_C),meat_1,meat).
instance_operation_has_output_has_data_format(buyItem(meat,webShop_C),meat,possess(client)).

instance_has_input(buyItem(butter,webShop_C),butter_1,butter).
instance_has_input(buyItem(butter,webShop_C),card_1,credit_card).
instance_operation_has_input_has_data_format(buyItem(butter,webShop_C),butter,in_items_list(list_items_in_shop)).
instance_operation_has_input_has_data_format(buyItem(butter,webShop_C),credit_card,enough_account_balance).
instance_has_output(buyItem(butter,webShop_C),butter_1,butter).
instance_operation_has_output_has_data_format(buyItem(butter,webShop_C),butter,possess(client)).

%----------------------

exists(Item,possess(client),I) :- exists(cart_web_shop_A,paid,I), exists(Item,on_cart(webShop_A),J), J <= I.
exists(Item,possess(client),I) :- exists(cart_web_shop_B,paid,I), exists(Item,on_cart(webShop_B),J), J <= I.


exists(X,in_items_list(list_electrical_device_items),I):- exists(list_electrical_device_items,list_of_items,I), itemInList(X,list_electrical_device_items).

exists(X,in_items_list(list_furniture_items),I):- exists(list_furniture_items,list_of_items,I), itemInList(X,list_furniture_items).

exists(X,in_items_list(list_food_items),I):- exists(list_food_items,list_of_items,I), itemInList(X,list_food_items).

exists(X,in_items_list(list_beverage_items),I):- exists(list_beverage_items,list_of_items,I), itemInList(X,list_beverage_items).

exists(X,in_items_list(list_book_items),I):- exists(list_book_items,list_of_items,I), itemInList(X,list_book_items).

exists(X,in_items_list(list_magazine_items),I):- exists(list_magazine_items,list_of_items,I), itemInList(X,list_magazine_items).

exists(X,in_items_list(list_items_in_shop),I):- exists(list_items_in_shop,list_of_items,I), itemInList(X,list_items_in_shop).


%=======================================================================
% PART 4.2 :  Defined QoS values for each concrete service operation which include tuple(Response Time,Throughput, Reliability, Availability)
%             Structure : has_qos_response_time(<concrete service operation>,<QoS Value>).
%                         has_qos_throughput(<concrete service operation>,<QoS Value>).
%                         has_qos_reliability(<concrete service operation>,<QoS Value>).
%                         has_qos_availability(<concrete service operation>,<QoS Value>).
%=======================================================================

%-------------For Response Time-----------------------------------------

has_qos_response_time(getItemsList(webShopTypeA),100).
has_qos_response_time(getItemsList(webShopTypeB),100).

has_qos_response_time(addToCart(laptop),100).
has_qos_response_time(addToCart(camera),100).
has_qos_response_time(addToCart(smart_phone),100).
has_qos_response_time(addToCart(desk),100).
has_qos_response_time(addToCart(chair),100).
has_qos_response_time(addToCart(coke),100).
has_qos_response_time(addToCart(beer),100).
has_qos_response_time(addToCart(water),100).
has_qos_response_time(addToCart(bread),100).
has_qos_response_time(addToCart(butter),100).
has_qos_response_time(addToCart(meat),100).

has_qos_response_time(removeFromCart(laptop),100).
has_qos_response_time(removeFromCart(camera),100).
has_qos_response_time(removeFromCart(smart_phone),100).
has_qos_response_time(removeFromCart(desk),100).
has_qos_response_time(removeFromCart(chair),100).
has_qos_response_time(removeFromCart(coke),100).
has_qos_response_time(removeFromCart(beer),100).
has_qos_response_time(removeFromCart(water),100).
has_qos_response_time(removeFromCart(bread),100).
has_qos_response_time(removeFromCart(butter),100).
has_qos_response_time(removeFromCart(meat),100).

has_qos_response_time(checkout(webShopTypeA),100).
has_qos_response_time(checkout(webShopTypeB),100).

has_qos_response_time(buyItem(laptop,webShop_A),100).
has_qos_response_time(buyItem(camera,webShop_A),100).
has_qos_response_time(buyItem(smart_phone,webShop_A),100).
has_qos_response_time(buyItem(desk,webShop_A),100).
has_qos_response_time(buyItem(chair,webShop_A),100).
has_qos_response_time(buyItem(coke,webShop_C),100).
has_qos_response_time(buyItem(beer,webShop_C),100).
has_qos_response_time(buyItem(water,webShop_C),100).
has_qos_response_time(buyItem(bread,webShop_C),100).
has_qos_response_time(buyItem(butter,webShop_C),100).
has_qos_response_time(buyItem(meat,webShop_C),100).

has_qos_response_time(getPrice(laptop),100).
has_qos_response_time(getPrice(camera),100).
has_qos_response_time(getPrice(smart_phone),100).
has_qos_response_time(getPrice(desk),100).
has_qos_response_time(getPrice(chair),100).
has_qos_response_time(getPrice(coke),100).
has_qos_response_time(getPrice(beer),100).
has_qos_response_time(getPrice(water),100).
has_qos_response_time(getPrice(bread),100).
has_qos_response_time(getPrice(butter),100).
has_qos_response_time(getPrice(meat),100).

%-------------For Throughput--------------------------------------------

has_qos_throughput(getItemsList(webShopTypeA),4000).
has_qos_throughput(getItemsList(webShopTypeB),4000).

has_qos_throughput(addToCart(laptop),4000).
has_qos_throughput(addToCart(camera),4000).
has_qos_throughput(addToCart(smart_phone),4000).
has_qos_throughput(addToCart(desk),4000).
has_qos_throughput(addToCart(chair),4000).
has_qos_throughput(addToCart(coke),4000).
has_qos_throughput(addToCart(beer),4000).
has_qos_throughput(addToCart(water),4000).
has_qos_throughput(addToCart(bread),4000).
has_qos_throughput(addToCart(butter),4000).
has_qos_throughput(addToCart(meat),4000).

has_qos_throughput(removeFromCart(laptop),4000).
has_qos_throughput(removeFromCart(camera),4000).
has_qos_throughput(removeFromCart(smart_phone),4000).
has_qos_throughput(removeFromCart(desk),4000).
has_qos_throughput(removeFromCart(chair),4000).
has_qos_throughput(removeFromCart(coke),4000).
has_qos_throughput(removeFromCart(beer),4000).
has_qos_throughput(removeFromCart(water),4000).
has_qos_throughput(removeFromCart(bread),4000).
has_qos_throughput(removeFromCart(butter),4000).
has_qos_throughput(removeFromCart(meat),4000).

has_qos_throughput(checkout(webShopTypeA),4000).
has_qos_throughput(checkout(webShopTypeB),4000).

has_qos_throughput(buyItem(laptop,webShop_A),4000).
has_qos_throughput(buyItem(camera,webShop_A),4000).
has_qos_throughput(buyItem(smart_phone,webShop_A),4000).
has_qos_throughput(buyItem(desk,webShop_A),4000).
has_qos_throughput(buyItem(chair,webShop_A),4000).
has_qos_throughput(buyItem(coke,webShop_C),4000).
has_qos_throughput(buyItem(beer,webShop_C),4000).
has_qos_throughput(buyItem(water,webShop_C),4000).
has_qos_throughput(buyItem(bread,webShop_C),4000).
has_qos_throughput(buyItem(butter,webShop_C),4000).
has_qos_throughput(buyItem(meat,webShop_C),4000).

has_qos_throughput(getPrice(laptop),4000).
has_qos_throughput(getPrice(camera),4000).
has_qos_throughput(getPrice(smart_phone),4000).
has_qos_throughput(getPrice(desk),4000).
has_qos_throughput(getPrice(chair),4000).
has_qos_throughput(getPrice(coke),4000).
has_qos_throughput(getPrice(beer),4000).
has_qos_throughput(getPrice(water),4000).
has_qos_throughput(getPrice(bread),4000).
has_qos_throughput(getPrice(butter),4000).
has_qos_throughput(getPrice(meat),4000).

%-------------For Reliability-------------------------------------------

has_qos_reliability(getItemsList(webShopTypeA),5000).
has_qos_reliability(getItemsList(webShopTypeB),5000).

has_qos_reliability(addToCart(laptop),5000).
has_qos_reliability(addToCart(camera),5000).
has_qos_reliability(addToCart(smart_phone),5000).
has_qos_reliability(addToCart(desk),5000).
has_qos_reliability(addToCart(chair),5000).
has_qos_reliability(addToCart(coke),5000).
has_qos_reliability(addToCart(beer),5000).
has_qos_reliability(addToCart(water),5000).
has_qos_reliability(addToCart(bread),5000).
has_qos_reliability(addToCart(butter),5000).
has_qos_reliability(addToCart(meat),5000).

has_qos_reliability(removeFromCart(laptop),5000).
has_qos_reliability(removeFromCart(camera),5000).
has_qos_reliability(removeFromCart(smart_phone),5000).
has_qos_reliability(removeFromCart(desk),5000).
has_qos_reliability(removeFromCart(chair),5000).
has_qos_reliability(removeFromCart(coke),5000).
has_qos_reliability(removeFromCart(beer),5000).
has_qos_reliability(removeFromCart(water),5000).
has_qos_reliability(removeFromCart(bread),5000).
has_qos_reliability(removeFromCart(butter),5000).
has_qos_reliability(removeFromCart(meat),5000).

has_qos_reliability(checkout(webShopTypeA),5000).
has_qos_reliability(checkout(webShopTypeB),5000).

has_qos_reliability(buyItem(laptop,webShop_A),5000).
has_qos_reliability(buyItem(camera,webShop_A),5000).
has_qos_reliability(buyItem(smart_phone,webShop_A),5000).
has_qos_reliability(buyItem(desk,webShop_A),5000).
has_qos_reliability(buyItem(chair,webShop_A),5000).
has_qos_reliability(buyItem(coke,webShop_C),5000).
has_qos_reliability(buyItem(beer,webShop_C),5000).
has_qos_reliability(buyItem(water,webShop_C),5000).
has_qos_reliability(buyItem(bread,webShop_C),5000).
has_qos_reliability(buyItem(butter,webShop_C),5000).
has_qos_reliability(buyItem(meat,webShop_C),5000).

has_qos_reliability(getPrice(laptop),5000).
has_qos_reliability(getPrice(camera),5000).
has_qos_reliability(getPrice(smart_phone),5000).
has_qos_reliability(getPrice(desk),5000).
has_qos_reliability(getPrice(chair),5000).
has_qos_reliability(getPrice(coke),5000).
has_qos_reliability(getPrice(beer),5000).
has_qos_reliability(getPrice(water),5000).
has_qos_reliability(getPrice(bread),5000).
has_qos_reliability(getPrice(butter),5000).
has_qos_reliability(getPrice(meat),5000).

%-------------For Availability------------------------------------------

has_qos_availability(getItemsList(webShopTypeA),1000).
has_qos_availability(getItemsList(webShopTypeB),1000).

has_qos_availability(addToCart(laptop),1000).
has_qos_availability(addToCart(camera),1000).
has_qos_availability(addToCart(smart_phone),1000).
has_qos_availability(addToCart(desk),1000).
has_qos_availability(addToCart(chair),1000).
has_qos_availability(addToCart(coke),1000).
has_qos_availability(addToCart(beer),1000).
has_qos_availability(addToCart(water),1000).
has_qos_availability(addToCart(bread),1000).
has_qos_availability(addToCart(butter),1000).
has_qos_availability(addToCart(meat),1000).

has_qos_availability(removeFromCart(laptop),1000).
has_qos_availability(removeFromCart(camera),1000).
has_qos_availability(removeFromCart(smart_phone),1000).
has_qos_availability(removeFromCart(desk),1000).
has_qos_availability(removeFromCart(chair),1000).
has_qos_availability(removeFromCart(coke),1000).
has_qos_availability(removeFromCart(beer),1000).
has_qos_availability(removeFromCart(water),1000).
has_qos_availability(removeFromCart(bread),1000).
has_qos_availability(removeFromCart(butter),1000).
has_qos_availability(removeFromCart(meat),1000).

has_qos_availability(checkout(webShopTypeA),1000).
has_qos_availability(checkout(webShopTypeB),1000).

has_qos_availability(buyItem(laptop,webShop_A),1000).
has_qos_availability(buyItem(camera,webShop_A),1000).
has_qos_availability(buyItem(smart_phone,webShop_A),1000).
has_qos_availability(buyItem(desk,webShop_A),1000).
has_qos_availability(buyItem(chair,webShop_A),1000).
has_qos_availability(buyItem(coke,webShop_C),1000).
has_qos_availability(buyItem(beer,webShop_C),1000).
has_qos_availability(buyItem(water,webShop_C),1000).
has_qos_availability(buyItem(bread,webShop_C),1000).
has_qos_availability(buyItem(butter,webShop_C),1000).
has_qos_availability(buyItem(meat,webShop_C),1000).

has_qos_availability(getPrice(laptop),1000).
has_qos_availability(getPrice(camera),1000).
has_qos_availability(getPrice(smart_phone),1000).
has_qos_availability(getPrice(desk),1000).
has_qos_availability(getPrice(chair),1000).
has_qos_availability(getPrice(coke),1000).
has_qos_availability(getPrice(beer),1000).
has_qos_availability(getPrice(water),1000).
has_qos_availability(getPrice(bread),1000).
has_qos_availability(getPrice(butter),1000).
has_qos_availability(getPrice(meat),1000).

%=======================================================================