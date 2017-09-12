/*
scr_effect_regeneration(
    Hp, die pro Zeiteinheit regeneriert werden,
    Dauer in Steps,
    Zeiteinheit in steps,
    Objekt, das beeinflusst wird
);
*/

var hp = argument0;
var time = argument1;
var rspeed = argument2;
var goal_object = argument3;
var effect_index = effect.regeneration;

if(!instance_exists(goal_object)) exit;
if(string(goal_object.object_index) == string(obj_player)) goal_object = player_stats;

if(goal_object.effects[effect_index] != -1) {
    goal_object.effects[effect_index].effect_time = time;
    exit;
}

var regeneration = instance_create(0, 0, obj_regeneration);
goal_object.effects[effect_index] = regeneration;

regeneration.regeneration_heal = hp;
regeneration.effect_time = time;
regeneration.regeneration_speed = rspeed - 1;
regeneration.goal_object = goal_object;
