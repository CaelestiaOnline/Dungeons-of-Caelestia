/*
scr_start_run(
);
*/

hub.in_hub = false;
admin.in_run = true;
admin.playing = true;
scr_inventory_clear_all();
scr_effect_rem_all(obj_player);

run_admin = instance_create(0, 0, obj_run_admin);

var game_room = rm_run_forest_init;

scr_keylock_ingamemenu(true);
scr_sidefade(game_room, 60);

scr_room_placer(game_room);
