/*
scr_start_run(
);
*/

hub.in_hub = false;
admin.in_run = true;
admin.playing = true;
player_stats.invincible = true;
scr_inventory_clear_all();
scr_effect_rem_all(obj_player);

scr_reset_stats();
scr_reset_player_stats();

scr_reset_run_progress();

run_admin = instance_create(0, 0, obj_run_admin);

var game_room = rm_run_forest_init;

scr_keylock_ingamemenu(true);
if(global.display_splash_screen) {
    scr_loading_screen(game_room, irandom(5) + 2, "TRANSFERRING TO PlANET X");
} else {
    scr_sidefade(game_room, 60);
}

scr_room_placer(game_room);
