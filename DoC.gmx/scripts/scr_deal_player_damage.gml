/*
scr_deak_player_damage(
    Schaden, der verursacht werden soll
*/

var damage = argument0;
var hp_copy = player_stats.hp;

hp_copy = hp_copy - damage;
if(hp_copy < 0) hp_copy = 0;

obj_player.dealt_damage += damage;

player_stats.hp = hp_copy;

