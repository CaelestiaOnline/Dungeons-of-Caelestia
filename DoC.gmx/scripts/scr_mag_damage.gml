/*
scr_mag_damage(
    damage
);
*/

var damage_normal = argument0;
var damage_crit = round(damage_normal*1.5);
var chance_crit = player_stats.chance_crit;
is_crit = false;
var mag_damage = 0;

is_crit = scr_crit_attack(chance_crit);
if(is_crit) mag_damage = damage_crit;
else mag_damage = damage_normal;
    
if(self.mana == -1) {
    mag_damage = round(mag_damage * (old_mana / player_stats.max_mana));
}

return mag_damage;


