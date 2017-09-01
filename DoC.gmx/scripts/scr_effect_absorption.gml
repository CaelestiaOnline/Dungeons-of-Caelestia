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

if(string(goal_object.object_index) == string(obj_player)) goal_object = player_stats;

if(goal_object.effects[effect_index] != -1) {
    if(goal_object == player_stats && (player_stats.absorption_hp + hp) <= player_stats.max_absorption_hp) {
        player_stats.absorption_hp += hp;
        goal_object.effects[effect_index].alarm[0] = time;
    }
    else if(goal_object.absorption_hp + hp <= 100) {
        goal_object.absorption_hp += hp;
        goal_object.effects[effect_index].alarm[0] += time;
    }
    exit;
}

var absorption = instance_create(0, 0, obj_absorption);
goal_object.effects[effect_index] = absorption;

absorption.alarm[0] = time - 1;
absorption.goal_object = goal_object;

///Resistenzfaktor erhöhen
if(goal_object == player_stats) player_stats.absorption_hp += hp;
else goal_object.absorption_hp += hp;
