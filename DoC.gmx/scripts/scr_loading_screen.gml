/*
scr_loading_screen(
Raum der nach der Überblendung betreten wird,
Ladezeit in Sekunden,
Ladetext
);
*/

scr_circlefade(rm_loading_screen, 60);

global.admin.loading_screen_goal = argument0;
global.admin.loading_screen_time = argument1*room_speed;
global.admin.loading_screen_heading = argument2;

