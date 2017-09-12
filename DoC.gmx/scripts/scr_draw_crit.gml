/*
scr_dealt_damage(
    object,
    is_crit
);
*/

if(!argument1) exit;

var ind_object = argument0;

var ind_x = ind_object.x;
var ind_y = ind_object.y - sprite_get_height(ind_object.sprite_index)/2 - 40;

var damage_ind = instance_create(ind_x, ind_y, obj_text_ind);
damage_ind.text = "CRITICAL";
