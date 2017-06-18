/*
scr_enter_game(
    
);
Verlässt das Spiel und bereitet es auf das Hauptmenü vor; der Tag
in_game ist nun false
*/

admin.in_game = false;
admin.playing = false;
hub.in_hub = false;
hub.in_menu = false;

if(instance_exists(obj_player)) obj_player.persistent = false;

scr_sidefade(rm_main_menu, 60);

