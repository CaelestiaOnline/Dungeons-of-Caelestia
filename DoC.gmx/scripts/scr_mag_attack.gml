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
var damage = 0;

is_crit = scr_crit_attack(chance_crit);
if(is_crit) damage = damage_crit;
else damage = damage_normal; 

///Angriff

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

return damage;
