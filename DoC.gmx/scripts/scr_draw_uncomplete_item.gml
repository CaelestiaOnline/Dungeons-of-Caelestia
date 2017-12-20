/*
scr_draw_uncomplete_item(

);

*/

var text_ind = instance_create(
    display_get_gui_width()/2 + irandom_range(-200, 200),
    display_get_gui_height()/2 + irandom_range(-200, 200),
    obj_gui_big_text_ind);
text_ind.draw_colour = c_red;
text_ind.text = "ITEM MALFORMED;##FUNCTION NOT ACCESSABLE;##DELETING LOG;";
