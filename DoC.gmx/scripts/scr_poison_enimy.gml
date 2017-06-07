/*
scr_poison_enimy(
Schaden, der verursacht werden soll;
Zeit, über die der Schaden verursacht werden soll;
Zeitabschnitt in denen der Schaden verursacht werden soll;
Objekt, an dem der Schaden verursacht wird;
)
*/
damage = argument0;
time = argument1;
pspeed = argument2;
object = argument3;

poison = instance_create(object.x, object.y, obj_poison_enimy);

poison.poison_damage = damage;
poison.poison_time = time;
poison.poison_speed = pspeed;
poison.poison_object = object;
