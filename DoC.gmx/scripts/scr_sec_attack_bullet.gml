/*
scr_bullet_attack(
    damage,
    damage_crit
    type,
    attack_script
    );
*/

if(!admin.playing) exit;
if(!player_stats.attack_ready) exit;

var damage_normal = argument0;
var damage_crit = argument1;
var type = argument2;
var chance_crit = player_stats.chance_crit;
var is_crit = false;
var damage = 0;
var attack_script = argument3;

var is_crit = scr_crit_attack(chance_crit);
if(is_crit) damage = damage_crit;
else damage = damage_normal; 

///Angriff

if(admin.sec_attack_key_pressed || admin.sec_attack_key) {
    if(player_stats.alarm[1] == -1 && alarm_get(0) == -1) {
    script_execute(attack_script, damage, is_crit, type);
    stats.attacks_done += 1;
    stats.sec_attacks_done += 1;
    alarm_set(0, item_stats[index, item_stats_sec.cooldown]);
    scr_attack_cooldown(-1);
    }
}

