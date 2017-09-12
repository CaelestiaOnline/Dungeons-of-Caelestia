/*
scr_deak_player_damage(
    Schaden, der verursacht werden soll
*/

if(player_stats.invincible) exit;

var damage = argument0;
var hp_copy = player_stats.hp;
var hp_copy_absorption = player_stats.absorption_hp;

damage *= player_stats.resistance_mult;

if(hp_copy_absorption > 0) {
    if(hp_copy_absorption < damage) {
        hp_copy_absorption = 0;
        damage -= hp_copy_absorption;
        hp_copy = hp_copy - damage; 
    }
    else hp_copy_absorption -= damage;
}
else hp_copy -= damage;

if(hp_copy < 0) hp_copy = 0;

obj_player.dealt_damage += damage;

stats.damage_taken += damage;

player_stats.hp = hp_copy;
player_stats.absorption_hp = hp_copy_absorption;
