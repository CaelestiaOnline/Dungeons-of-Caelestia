/*
scr_mag_ability(
    );
*/

if(!admin.playing) exit;
if(!player_stats.attack_ready) exit;

///Angriff

if(admin.magic_key_pressed || admin.magic_key) {
    if(player_stats.alarm[1] == -1 && alarm_get(0) == -1) {
    if((player_stats.mana - self.mana) >= 0) {  
        old_mana = player_stats.mana;  
        if(self.mana == -1) {
            player_stats.mana = 0;
        } else player_stats.mana -= self.mana;
        confirmed = true;
        stats.attacks_done += 1;
        stats.mag_attacks_done += 1;
        alarm_set(0, round(item_stats[index, item_stats_mag.cooldown] * player_stats.attack_speed_mult));
        scr_attack_cooldown(-1);
    }
    }
}
