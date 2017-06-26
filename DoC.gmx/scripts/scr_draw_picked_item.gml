/*
scr_draw_picked_item(
    x,
    y,
    item
);
*/

var ind_x = argument0;
var ind_y = argument1;
var dealt_item = argument2;

var pickup_ind = instance_create(ind_x, ind_y, obj_pickup_ind);
pickup_ind.sprite_index = spr_items;
pickup_ind.image_index = dealt_item;
pickup_ind.image_xscale = 0.7;
pickup_ind.image_yscale = 0.7;
