/*
scr_draw_button_hover(
    colour,
    alpha
);

*/

var button_colour = argument0;
var button_alpha = argument1;

if(button_colour == -1) button_colour = c_white;
if(button_alpha == -1) button_alpha = 0.5;

//Rechteck bei Hovern
draw_set_colour(button_colour);
draw_set_alpha(button_alpha);
draw_rectangle(
    x - (width-2),
    y - (width-2),
    x + (width-2),
    y + (width-2),
    0
);
draw_set_alpha(1);


