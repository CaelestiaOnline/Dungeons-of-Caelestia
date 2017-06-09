/*
scr_enter_game(
    Ladebildschirm? (boolean)
);
Initialisiert das Spiel und switcht in den Hub, über dieses Skript
wird das Spiel in den Tag in_game gesetzt.
*/

var loading_screen = argument0;

if(loading_screen) {
    scr_loading_screen(rm_main_hub, 5, "");
} else scr_sidefade(rm_main_hub, 60);

instance_create(0, 0, obj_enter_game);



