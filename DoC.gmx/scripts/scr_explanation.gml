/*
scr_explanation(
    x,
    y,
    text
)
*/

var expl_x = argument0;
var expl_y = argument1;
var expl_text = argument2;
var width = 32;

var sep = 16;
var w = 300;
draw_set_font(fnt_explanation);

var text_width = string_width_ext(expl_text, sep, w) + width*2;
var text_height = string_height(expl_text) + width*2;

draw_set_alpha(1);
draw_set_colour(global.co_blue_gray_1000);

draw_roundrect_ext(
    expl_x + width/2,
    expl_y + width/2,
    expl_x + text_width,
    expl_y + text_height,
    16,
    16,
    0
);

draw_set_colour(c_white);

draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text_ext(expl_x + width/2 + width, expl_y + width/2 + width, expl_text, sep, w);
draw_set_valign(fa_top);
