/*
scr_effect_absorption(
    Hp, die hinzugefügt werden
    Dauer in Steps,
    Objekt, das beeinflusst wird
);
*/
var hp = argument0;
var time = argument1;
var goal_object = argument2;
var effect_index = effect.absorption;

if(!instance_exists(goal_object)) exit;

if(goal_object.effects[effect_index] != -1) {
    goal_object.effects[effect_index].absorption_time += time;
    exit;
}

var absorption = instance_create(0, 0, obj_absorption);
goal_object.effects[effect_index] = absorption;

absorption.absorption_time = time - 1;
absorption.goal_object = goal_object;

///Resistenzfaktor erhöhen
if(goal_object == player_stats) player_stats.absorption_hp += hp;
else goal_object.absorption_hp += hp;
