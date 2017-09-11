/*
scr_prim_ability(
*/

if(!admin.playing) exit;

///Angriff

if(admin.prim_attack_key_pressed || admin.prim_attack_key) {
    if(player_stats.alarm[1] == -1 && alarm_get(0) == -1) {
    confirmed = true;
    stats.attacks_done += 1;
    stats.prim_attacks_done += 1;
    var cooldown = 0;
    if(index != -10) {
        cooldown = item_stats[index, item_stats_prim.attack_speed];
    } else cooldown = player_stats.attack_speed;
    alarm_set(0, cooldown);
    if(player_stats.attack_speed <= cooldown) cooldown = -1;
    scr_attack_cooldown(cooldown);
    }
}
