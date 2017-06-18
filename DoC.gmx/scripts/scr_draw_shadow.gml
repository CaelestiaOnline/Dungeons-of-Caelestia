/*
scr_draw_shadow(
    width,
    height,
    y_offset

);
*/

var width = argument0;
var height = argument1;
var y_offset = y + argument2;


var x1 = x - width;
var x2 = x + width;

var y1 = y_offset + height;
var y2 = y_offset - height; 

draw_set_colour(c_black);
draw_set_alpha(0.6);
draw_ellipse(x1, y1, x2, y2, 0);
draw_set_colour(c_white);
draw_set_alpha(1);
