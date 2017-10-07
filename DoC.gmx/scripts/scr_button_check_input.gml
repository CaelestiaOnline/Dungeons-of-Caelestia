/*
scr_button_check_input(


);
*/

var click = admin.left_click_pressed;
var click_released = mouse_check_button_released(mb_left);
var click_hold = mouse_check_button(mb_left);
var right_click = admin.right_click_pressed;
var right_click_hold = mouse_check_button(mb_right);
var shift = admin.shift_key;

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

if(right_click_hold && !click_hold && !shift) {
    confirmed_right_hold = true;
}
