/*
scr_button_interaction(
    width
);

*/

//Drag & Drop System

if(abs(mouse.x - x) < width && (abs(mouse.y - y) < width)) {
    scr_button_check_input();
}
