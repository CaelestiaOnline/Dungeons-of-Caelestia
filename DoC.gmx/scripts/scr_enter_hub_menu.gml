/*
scr_enter_hub_menu(
    room
);
*/

var hub_room = argument0;

scr_player_set_persistent(false);

scr_sidefade(hub_room, 60);
hub.in_menu = true;
admin.playing = false;

