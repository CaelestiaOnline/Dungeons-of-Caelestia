/*
scr_draw_slot_cooldown(
    cooldown,
    x,
    y,
    radius
);
*/

var width = sprite_get_width(spr_inv_border)/2 + 2;

var cooldown = argument0;
var cooldown_x = argument1;
var cooldown_y = argument2;
var colour_radius = argument3;

draw_set_colour(global.co_blue_gray_1000);
draw_set_alpha(cooldown);

var x1 = cooldown_x;
var y1 = cooldown_y;

var radius = cooldown * 16 + 28;

draw_circle(x1, y1, radius, 0);

draw_set_alpha(1);

draw_set_colour(global.co_red_A700);
var alpha1;
if(cooldown > 0) alpha1 = cooldown + 0.5*cooldown;
else alpha1 = 0;

draw_set_alpha(alpha1);
draw_circle(cooldown_x, cooldown_y, colour_radius-2, 0);
draw_set_alpha(1);



