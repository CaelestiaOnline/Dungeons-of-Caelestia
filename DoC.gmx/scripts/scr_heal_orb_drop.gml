/*
scr_heal_orb_drop(
    x,
    y

);
*/

var heal_x = argument0;
var heal_y = argument1;

var drop_chance = player_stats.heal_orb_chance;

if(!scr_crit_attack(drop_chance)) exit;

var heal_orb = instance_create(heal_x, heal_y, obj_heal_orb);
heal_orb.heal = irandom(round(player_stats.max_hp/5)) + round(player_stats.max_hp/5);
