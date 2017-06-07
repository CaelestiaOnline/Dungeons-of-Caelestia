/*
scr_deal_damage(
    Objekt, an das Schaden ausgeteilt werden soll
    Schaden
*/

var object = argument0;
var damage = argument1;
var hp_copy = object.hp;

hp_copy = hp_copy - damage;
if(hp_copy < 0) hp_copy = 0;

object.dealt_damage += damage;

object.hp = hp_copy;
