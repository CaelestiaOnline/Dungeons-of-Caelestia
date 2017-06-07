/*
scr_inventory_drop_item(
    Item
*/

var drop_item = argument0;
var ground_item;
ground_item = instance_create(obj_player.x + random_range(-15, 15), obj_player.y + random_range(-15, 15), obj_ground_item);
ground_item.ground_item = drop_item;
