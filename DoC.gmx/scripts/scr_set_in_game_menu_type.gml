/*
scr_set_in_game_menu_type(
    type,
    status
);
*/

var type = argument0;
var status = argument1;

if(!status) type = "";

inventory.show_inv = false;
help_in_game.show_help = false;
stats_ext_in_game.show_stats = false;

switch(type) {
        case "inv": 
            inventory.show_inv = true;
            break;
        case "help":
            help_in_game.show_help = true;
            break;
        case "stats":
            stats_ext_in_game.show_stats = true;
            break;
        case "":
            exit;
            break;
    }
