/*
scr_draw_dealt_run_money(
    money
);
*/

var ind_x = obj_player.x - 40;
var ind_y = obj_player.y - sprite_get_height(obj_player.sprite_index)/2 - 20;

var money = argument0;

var money_ind = instance_create(ind_x, ind_y, obj_money_ind);
money_ind.text = money;
