/*
scr_dealt_pickup(
    x,
    y,
    item
);
*/

var ind_x = argument0;
var ind_y = argument1;
var dealt_item = argument2;

if(!instance_exists(item[dealt_item, 2])) exit;
//if(instance_exists(obj_pickup_ind)) exit;

var pickup_ind = instance_create(ind_x, ind_y, obj_pickup_ind);
pickup_ind.sprite_index = spr_items;
pickup_ind.image_index = dealt_item;
