/*
scr_leave_hub_menu(

);
*/
scr_sidefade(rm_main_hub, 60);
hub.in_menu = false;

instance_create(0, 0, obj_player_persistent);
