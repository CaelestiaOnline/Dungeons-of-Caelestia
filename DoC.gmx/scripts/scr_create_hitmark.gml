/*
scr_create_hitmark(
    x,
    y,
    damage,
    goal_object
*/
var hitmark_x = argument0;
var hitmark_y = argument1 - player_stats.y_melee_offset;
var is_crit = argument2;
var dir = argument3;
var goal_object = argument4;


var hitmark = instance_create(hitmark_x, hitmark_y, obj_hit_mark);
if(is_crit) hitmark.sprite_index = spr_hit_crit;
hitmark.image_xscale = dir;
hitmark.goal_object = goal_object;
