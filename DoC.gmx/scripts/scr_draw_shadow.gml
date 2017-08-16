/*
scr_draw_shadow(
    object,
    width,
    height,
    y_offset,
);
*/

var object = argument0;

if(!instance_exists(object)) exit;

var width = argument1;
var height = argument2;
var y_offset = object.y + argument3;


var x1 = object.x - width;
var x2 = object.x + width;

var y1 = y_offset + height;
var y2 = y_offset - height; 

draw_set_colour(colour);
draw_set_alpha(alpha);
draw_ellipse(x1, y1, x2, y2, 0);
draw_set_colour(c_white);
draw_set_alpha(1);
