/*
scr_leave_hub(
    raum
);
*/

var game_room = argument0;

hub.in_hub = false;
admin.playing = true;
player_stats.invincible = true;
scr_keylock_ingamemenu(true);
scr_sidefade(game_room, 60);

scr_room_placer(game_room);
