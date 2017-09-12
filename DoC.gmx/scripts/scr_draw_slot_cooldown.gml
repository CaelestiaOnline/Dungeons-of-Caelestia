/*
scr_draw_slot_cooldown(
    cooldown,
    x,
    y
);
*/

var width = sprite_get_width(spr_inv_border)/2 + 2;

var cooldown = argument0;
var cooldown_x = argument1;
var cooldown_y = argument2;

draw_set_colour(global.co_blue_gray_1000);
draw_set_alpha(cooldown);

var x1 = cooldown_x;
var y1 = cooldown_y;

var radius = cooldown * 16 + 28;

draw_circle(x1, y1, radius, 0);

draw_set_alpha(1);

