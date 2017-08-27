/*
scr_loading_screen(
    Raum der nach der Überblendung betreten wird,
    Ladezeit in Sekunden,
    Ladetext
);
*/

scr_circlefade(rm_loading_screen, 60);

var loading_screen_stats = instance_create(0 ,0, obj_loading_screen_stats);

loading_screen_stats.loading_screen_goal = argument0;
loading_screen_stats.loading_screen_time = argument1*room_speed;
loading_screen_stats.loading_screen_heading = argument2;

