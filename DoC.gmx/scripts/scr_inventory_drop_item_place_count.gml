/*
scr_inventory_drop_item(
    Item,
    x,
    y,
    count
*/

var drop_item = argument0;
var drop_x = argument1;
var drop_y = argument2;
var count = argument3;
var ground_item;
repeat(count) {
    ground_item = instance_create(drop_x + random_range(-5, 5), drop_y + random_range(-5, 5), obj_ground_item);
    ground_item.ground_item = drop_item;
}
