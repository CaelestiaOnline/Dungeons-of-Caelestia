/*
scr_mag_attack(
    damage,
    );
*/

if(!admin.playing) exit;
if(!player_stats.attack_ready) exit;

var damage_normal = argument0;
var damage_crit = round(damage_normal*1.5);
var chance_crit = player_stats.chance_crit;
is_crit = false;
var mag_damage = 0;

///Angriff

if(admin.magic_key_pressed || admin.magic_key) {
    if(player_stats.alarm[1] == -1 && alarm_get(0) == -1) {
    
    is_crit = scr_crit_attack(chance_crit);
    if(is_crit) mag_damage = damage_crit;
    else mag_damage = damage_normal;
    
    if(self.mana == -1) {
        mag_damage *= (player_stats.mana / player_stats.max_mana);
    }

    if((player_stats.mana - self.mana) >= 0) {
        if(self.mana == -1) {
            player_stats.mana = 0;
        } else player_stats.mana -= self.mana;
        confirmed = true;
        stats.attacks_done += 1;
        stats.mag_attacks_done += 1;
        alarm_set(0, item_stats[index, item_stats_mag.cooldown]);
        scr_attack_cooldown(-1);
    }
    }
}

return mag_damage;
