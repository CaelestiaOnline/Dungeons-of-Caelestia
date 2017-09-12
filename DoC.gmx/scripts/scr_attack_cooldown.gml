/*
scr_attack_cooldown()
    cooldown

*/

var cooldown = argument0;
if(cooldown == -1) cooldown = player_stats.attack_speed;

player_stats.attack_ready = false;
player_stats.alarm[1] = cooldown;
