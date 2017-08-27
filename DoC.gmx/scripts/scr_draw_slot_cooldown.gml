/*
scr_draw_slot_cooldown(
    cooldown,
    x,
    y
);
*/

var width = sprite_get_width(spr_inv_border)/2;

var cooldown = argument0;
var cooldown_x = argument1;
var cooldown_y = argument2;

draw_set_colour(c_white);
draw_set_alpha(cooldown);

var cooldown_width = (1 - cooldown) * width*2;

var x1 = cooldown_x - width;
var x2 = cooldown_x + width - cooldown_width;
var y1 = cooldown_y - width;
var y2 = cooldown_y + width;

var radius = 32;
draw_roundrect_ext(x1, y1, x2, y2, radius, radius, 0);

draw_set_alpha(1);

