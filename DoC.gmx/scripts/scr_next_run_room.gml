/*
scr_next_run_room(
);
*/
var new_level = false;
if((run_admin.map[run_admin.run_level_index, run_admin.run_room_index + 1]) != -1) {
    run_admin.run_room_index += 1;
} else {
    run_admin.run_level_index++;
    run_admin.run_room_index = 0;
    new_level = true;
}

game_room = run_admin.map[run_admin.run_level_index, run_admin.run_room_index];

scr_keylock_ingamemenu(true);
if(new_level && global.display_splash_screen) {
    scr_loading_screen(game_room, irandom(2) + 2, "ACCESSING NEW AREA");
} else {
    scr_sidefade(game_room, 60);
}

player_stats.invincible = true;

scr_room_placer(game_room);
