/*
scr_change_run_room(
);
*/
game_room = asset_get_index("rm_run_" + string(stage) + string(irandom_range(1, run_room_count)));

scr_keylock_ingamemenu(true);
scr_sidefade(game_room, 60);

player_stats.invincible = true;

if(admin.in_run) {
    run_admin.run_room_count += 1;
}

scr_room_placer(game_room);
