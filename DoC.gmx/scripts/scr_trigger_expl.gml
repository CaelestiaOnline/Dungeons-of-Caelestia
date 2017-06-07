/*
scr_trigger_expl(
    text
);
*/

///Erklärung
var expl_text = argument0;
var display = false;
var time = room_speed*2;

if(abs(mouse_ind.x - x) < width && (abs(mouse_ind.y - y) < width)) {
    if(alarm_get(0) == -2) alarm_set(0, time);
    if(alarm_get(0) == -1) display = true; 
    
    if(display) scr_explanation(x, y, expl_text);

} else {
    display = false;
    alarm_set(0, -2);
}
