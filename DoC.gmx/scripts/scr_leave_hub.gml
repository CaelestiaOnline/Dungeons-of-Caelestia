/*
scr_leave_hub(
    raum
);
*/

var game_room = argument0;

hub.in_hub = false;
player_stats.player_freeze = true;
scr_sidefade(game_room, 60);

var room_placer = instance_create(0, 0, obj_room_placer);
room_placer.goal = game_room;
