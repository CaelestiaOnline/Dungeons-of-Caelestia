/*
scr_leave_hub(
    raum
);
*/

var game_room = argument0;

hub.in_hub = false;
admin.playing = true;
scr_keylock_ingamemenu(true);
scr_sidefade(game_room, 60);

var room_placer = instance_create(0, 0, obj_room_placer);
room_placer.goal = game_room;
