/*
scr_create_hitmark(
    x,
    y,
    damage
*/
var hitmark_x = argument0;
var hitmark_y = argument1;
var is_crit = argument2;
var dir = argument3;


var hitmark = instance_create(hitmark_x, hitmark_y, obj_hit_mark);
if(is_crit) hitmark.sprite_index = spr_hit_crit;
hitmark.image_xscale = dir;
