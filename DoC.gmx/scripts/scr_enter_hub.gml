/*
scr_enter_hub(

);
*/

var game_room = rm_main_hub;

hub.in_hub = true;
admin.playing = true;
player_stats.invincible = true;
scr_effect_rem_all(obj_player);
scr_reset_player_stats();
scr_keylock_all(true);
scr_sidefade(game_room, 60);

var room_placer = instance_create(0, 0, obj_room_placer);
room_placer.goal = game_room;
