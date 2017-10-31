/*
scr_inventory_drop_item_fragment(
    Item,
    percent,
    x,
    y,
*/

var drop_item = argument0;
var percent = argument1;
var drop_x = argument2;
var drop_y = argument3;

if(drop_item == items.no_valid_item) exit;

var ground_item;
ground_item = instance_create(drop_x + random_range(-15, 15), drop_y + random_range(-15, 15), obj_ground_item_fragment);
ground_item.ground_item = drop_item;
ground_item.fragment = percent;
