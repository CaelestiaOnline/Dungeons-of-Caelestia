/*
scr_heal(
    Objekt, das geheilt werden soll
    Heilung, die verursacht werden soll
*/

var odject =argument0;
var heal = argument1;
var hp_copy = object.hp

if(object.hp >= object.max_hp) return false;

hp_copy = hp_copy + heal;

if(hp_copy > object.max_hp) hp_copy = object.max_hp;

object.dealt_heal += heal; 

object.hp = hp_copy;
return true;

