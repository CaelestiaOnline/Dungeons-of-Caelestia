/*
scr_prim_attack_melee(
    damage,
    damage_crit,
    attack_script,
*/

if(!admin.playing) exit;

var damage_normal = argument0;
var damage_crit = argument1;
var chance_crit = player_stats.chance_crit;
var is_crit = false;
var damage = 0;
var attack_script = argument2;

var is_crit = scr_crit_attack(chance_crit);
if(is_crit) damage = damage_crit;
else damage = damage_normal; 

///Angriff

if(admin.prim_attack_key_pressed || admin.prim_attack_key) {
    if(player_stats.alarm[1] == -1 && alarm_get(0) == -1) {
    script_execute(attack_script, damage, is_crit);
    stats.attacks_done += 1;
    stats.prim_attacks_done += 1;
    stats.melee_attacks_done += 1;
    var cooldown = 0;
    if(index != -10) {
        cooldown = item_stats[index, item_stats_prim.attack_speed];
    } else cooldown = player_stats.attack_speed;
    alarm_set(0, cooldown);
    if(player_stats.attack_speed <= cooldown) cooldown = -1;
    scr_attack_cooldown(cooldown);
    }
}
