/*
scr_deal_damage(
    Objekt, an das Schaden ausgeteilt werden soll
    Schaden
*/

var object = argument0;
var damage = argument1;
var hp_copy = object.hp;

if(self == obj_hitbox_melee && self == obj_bullet) damage *= player_stats.strength_mult;

hp_copy = hp_copy - damage;
if(hp_copy < 0) hp_copy = 0;

object.dealt_damage += damage;
stats.damage_done += damage;

object.hp = hp_copy;
