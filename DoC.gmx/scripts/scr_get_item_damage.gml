/*
scr_get_item_damage(
    damage,
    damage_crit
);
*/

var damage_normal = argument0;
var damage_crit = argument1;
var chance_crit = player_stats.chance_crit;
is_crit = false;
var damage = 0;

is_crit = scr_crit_attack(chance_crit);
if(is_crit) damage = damage_crit;
else damage = damage_normal; 

return damage;
