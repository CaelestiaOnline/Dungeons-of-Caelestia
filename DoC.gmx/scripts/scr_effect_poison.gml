/*
scr_effect_poison(
    Schaden, der verursacht werden soll;
    Zeit, über die der Schaden verursacht werden soll;
    Zeitabschnitt in denen der Schaden verursacht werden soll;
    Objekt, an dem der Schaden verursacht wird;
)
*/
var damage = argument0;
var time = argument1;
var pspeed = argument2;
var object = argument3;

if(object == obj_player) object = player_stats;

var poison = instance_create(object.x, object.y, obj_poison);

poison.poison_damage = damage;
poison.poison_time = time;
poison.poison_speed = pspeed;
poison.poison_object = object;

poison.poison_count = time div pspeed;

//Schaden pro Zeitabschnitt?
//poison_damage_time = poison_damage div poison_count;
