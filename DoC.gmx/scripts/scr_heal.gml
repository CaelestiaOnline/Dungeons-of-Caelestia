/*
scr_heal(
    Objekt, das geheilt werden soll
    Heilung, die verursacht werden soll
*/

var object = argument0;
var heal = argument1;
var hp_copy = object.hp

show_debug_message("HEAL 2: " + string(heal));

if(object.hp >= object.max_hp) return false;

hp_copy = hp_copy + heal;

if(hp_copy > object.max_hp) hp_copy = object.max_hp;

object.dealt_heal += heal; 

object.hp = hp_copy;

show_debug_message("HEAL 3: " + string(heal));

return true;

