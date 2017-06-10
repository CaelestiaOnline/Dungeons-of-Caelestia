/*
scr_attack_cooldown()


*/

player_stats.attack_ready = false;
with(player_stats) alarm_set(1, player_stats.attack_speed);
