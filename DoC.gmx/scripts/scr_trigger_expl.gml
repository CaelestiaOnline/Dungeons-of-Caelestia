/*
scr_trigger_expl(
    text
);
*/

///Erklärung
var expl_text = argument0;
var display = false;
var time = room_speed;

if(abs(mouse.x - x) < width && (abs(mouse.y - y) < width)) {
    if(alarm_get(0) == -2) alarm_set(0, time);
    if(alarm_get(0) == -1) display = true; 
    
    if(display) scr_explanation(x, y, expl_text);

} else {
    display = false;
    alarm_set(0, -2);
}
