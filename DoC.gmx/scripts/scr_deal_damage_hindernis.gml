/*
scr_deal_damage_hindernis(
    Objekt, an das Schaden ausgeteilt werden soll
    Schaden
*/

var object = argument0;
var damage = argument1;
var hp_copy = object.hp;

if(object.hp == -1) exit;

hp_copy = hp_copy - damage;
if(hp_copy < 0) hp_copy = 0;

object.hp = hp_copy;
