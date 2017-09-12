/*
scr_change_run_room(
);
*/
game_room = asset_get_index("rm_run_" + string(stage) + string(irandom_range(1, run_room_count)));

scr_keylock_ingamemenu(true);
scr_sidefade(game_room, 60);

var room_placer = instance_create(0, 0, obj_room_placer);
room_placer.goal = game_room;
