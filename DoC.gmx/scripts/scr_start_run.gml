/*
scr_start_run(
);
*/

hub.in_hub = false;
admin.in_run = true;
admin.playing = true;
scr_inventory_clear_all();
scr_effect_rem_all(obj_player);

var game_room = rm_run_forest_init;

scr_keylock_ingamemenu(true);
scr_sidefade(game_room, 60);

var room_placer = instance_create(0, 0, obj_room_placer);
room_placer.goal = game_room;
