/*
scr_enter_hub_menu(
    room
);
*/

var hub_room = argument0;

obj_player.persistent = false;

scr_sidefade(hub_room, 60);
hub.in_menu = true;
admin.in_game = false;
