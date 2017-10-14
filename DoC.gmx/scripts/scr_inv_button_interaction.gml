/*
scr_button_interaction(

);

*/

//Drag & Drop System

width = sprite_get_width(spr_inv_border)/2;

if(abs(mouse.x - x) < width && (abs(mouse.y - y) < width)) {
    scr_button_check_input();
}
