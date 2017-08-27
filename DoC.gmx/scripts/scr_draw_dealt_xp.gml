/*
scr_draw_dealt_xp(
    xp
);
*/

var ind_x = obj_player.x - 20;
var ind_y = obj_player.y - sprite_get_height(obj_player.sprite_index)/2 - 20;

var xp = argument0;

var xp_ind = instance_create(ind_x, ind_y, obj_xp_ind);
xp_ind.text = xp;
