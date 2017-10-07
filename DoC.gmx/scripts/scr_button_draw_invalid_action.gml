/*
scr_button_draw_invalid_action(
    relative_offset_x,
    relative_offset_y,
);

*/

var relative_offset_x = argument0;
var relative_offset_y = argument1;

var text_ind = instance_create(x + relative_offset_x, y + relative_offset_y, obj_gui_text_ind);
text_ind.draw_colour = c_red;
text_ind.text = "INVALID ACTION.";
