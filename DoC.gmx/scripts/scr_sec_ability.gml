/*
scr_sec_ability(
    );
*/

if(!admin.playing) exit;
if(!player_stats.attack_ready) exit;

///Angriff

if(admin.sec_attack_key_pressed || admin.sec_attack_key) {
    if(player_stats.alarm[1] == -1 && alarm_get(0) == -1) {
    confirmed = true;
    stats.attacks_done += 1;
    stats.sec_attacks_done += 1;
    alarm_set(0, round(item_stats[index, item_stats_sec.cooldown] * player_stats.attack_speed_mult));
    scr_attack_cooldown(-1);
    }
}

