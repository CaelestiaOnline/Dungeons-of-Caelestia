/*
scr_next_run_room(
);
*/

if((run_admin.map[run_admin.run_level_index, run_admin.run_room_index + 1]) != -1) {
    run_admin.run_room_index += 1;
} else {
    run_admin.run_level_index++;
    run_admin.run_room_index = 0;
}

game_room = run_admin.map[run_admin.run_level_index, run_admin.run_room_index];

scr_keylock_ingamemenu(true);
scr_sidefade(game_room, 60);

player_stats.invincible = true;

scr_room_placer(game_room);
