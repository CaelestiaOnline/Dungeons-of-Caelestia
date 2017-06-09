/*
scr_effect_poison(
    Schaden, der insgesamt verursacht werden soll;
    Zeit, über die der Schaden verursacht werden soll;
    Zeitabschnitt in denen der Schaden verursacht werden soll;
    Objekt, an dem der Schaden verursacht wird;
)
*/
var idamage = argument0;
var time = argument1;
var pspeed = argument2;
var object = argument3;
var damage = idamage div (time div pspeed)

if(object == obj_player) object = player_stats;

var poison = instance_create(object.x, object.y, obj_poison);

poison.poison_damage = damage;
poison.poison_time = time;
poison.poison_speed = pspeed;
poison.poison_object = object;
