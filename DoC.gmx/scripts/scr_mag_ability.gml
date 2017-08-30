/*
scr_mag_ability(
    );
*/

if(!admin.playing) exit;
if(!player_stats.attack_ready) exit;

///Ability

if(admin.magic_key_pressed || admin.magic_key) {
    if(player_stats.alarm[1] == -1 && alarm_get(0) == -1) {
    if((player_stats.mana - self.mana) >= 0) {
        player_stats.mana -= self.mana;
        confirmed = true;
        stats.attacks_done += 1;
        stats.mag_attacks_done += 1;
        alarm_set(0, item_stats[index, item_stats_mag.cooldown]);
        scr_attack_cooldown(-1);
    }
    }
}
