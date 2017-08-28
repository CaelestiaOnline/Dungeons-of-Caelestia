/*
scr_effect_poison(
    Schaden, der insgesamt verursacht werden soll;
    Zeit, über die der Schaden verursacht werden soll;
    Zeitabschnitt in denen der Schaden verursacht werden soll;
    Objekt, an dem der Schaden verursacht wird;
)
*/
var damage = argument0;
var time = argument1;
var pspeed = argument2;
var goal_object = argument3;
var effect_index = effect.poison;

if(goal_object.effects[effect_index] != -1) {
    goal_object.effects[effect_index].poison_time += time;
    exit;
}

var poison = instance_create(0, 0, obj_poison);
goal_object.effects[effect_index] = poison;

poison.poison_damage = damage;
poison.poison_time = time;
poison.poison_speed = pspeed;
poison.goal_object = goal_object;
