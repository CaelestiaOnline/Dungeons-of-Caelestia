/*
scr_player_heal(
    Heilung, die verursacht werden soll
*/

var heal = argument0;
var hp_copy = player_stats.hp;

if(player_stats.hp >= player_stats.max_hp) return false;

hp_copy = hp_copy + heal;

if(hp_copy > player_stats.max_hp) hp_copy = player_stats.max_hp;

obj_player.dealt_heal += heal; 

player_stats.hp = hp_copy;
return true;

