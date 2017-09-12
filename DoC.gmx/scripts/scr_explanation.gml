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

var sep = 12;
var w = 500;
draw_set_font(fnt_explanation);

var text_width = string_width_ext(expl_text, sep, w);
var text_height = string_height(expl_text);

draw_set_alpha(0.8);
draw_set_colour(c_white);
draw_rectangle(
    expl_x + width - 1,
    expl_y + width - 1,
    expl_x + width + text_width + 1 + 4,
    expl_y + width + text_height + 1,
    0
);
draw_set_alpha(0.95);
draw_set_colour(global.co_blue_gray_1000);

draw_rectangle(
    expl_x + width,
    expl_y + width,
    expl_x + width + text_width + 4,
    expl_y + width + text_height,
    0
);

draw_set_colour(c_white);

draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text_ext(expl_x + width + 4, expl_y + width + text_height/2, expl_text, sep, w);
draw_set_valign(fa_top);
draw_set_alpha(1);
