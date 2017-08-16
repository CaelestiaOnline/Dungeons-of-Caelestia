/*
scr_create_shop_button(
    x,
    y,
    item,
    count
);
*/

var button_x = argument0;
var button_y = argument1;
var button_item = argument2;
var button_count;
if(button_item != -1) {
    button_count = item[button_item, 4];
} else button_count = 0;

var shop_button = instance_create(button_x, button_y, obj_hub_button_item_shop);
shop_button.button_item = button_item;
shop_button.button_count = button_count;

return shop_button;
