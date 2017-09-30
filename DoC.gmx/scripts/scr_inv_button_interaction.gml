/*
scr_button_interaction(

);

*/

//Drag & Drop System
var click = admin.left_click_pressed;
var click_released = mouse_check_button_released(mb_left);
var click_hold = mouse_check_button(mb_left);
var right_click = admin.right_click_pressed;
var shift = admin.shift_key;
width = sprite_get_width(spr_inv_border)/2;

if(abs(mouse.x - x) < width && (abs(mouse.y - y) < width)) {

    confirmed_hover = true;
    
    if(click && !right_click && !shift) {
        confirmed_left = true;
    }
    
    if(click && !right_click && shift) {
        confirmed_shift_left = true;
    }
    
    if(click_released && !shift) {
        confirmed_left_released = true;
    }
    
    if(click_hold && !shift) {
        confirmed_left_hold = true;
    }
    
    if(right_click && !click && !shift) {
        confirmed_right = true;
    }
}
