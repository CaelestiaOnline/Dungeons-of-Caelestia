/*
scr_leave_game(
    
);
Verlässt das Spiel und bereitet es auf das Hauptmenü vor; der Tag
in_game ist nun false
*/

admin.in_game = false;
admin.playing = false;
hub.in_hub = false;
hub.in_menu = false;
mouse.is_visible = false;

//Save
scr_write_progress();
scr_write_items();
scr_write_upgrades();
scr_write_chars();
scr_write_last_char();
scr_write_volume();

scr_effect_kill_all();

scr_keylock_ingamemenu(false);

scr_player_set_persistent(false);

scr_sidefade(rm_main_menu, 60);

