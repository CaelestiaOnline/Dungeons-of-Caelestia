/*
scr_effect_heal(
    hp,
    goal_object
);
*/

var heal = argument0;
var goal_object = argument1;
var effect_index = effect.heal;
var time = room_speed;
var regeneration_speed = round(room_speed/20);
var regeneration_heal = heal / (1 / (regeneration_speed / time));

if(!instance_exists(goal_object)) exit;

if(goal_object.effects[effect_index] != -1) {
    goal_object.effects[effect_index].regeneration_time += time;
    exit;
}

var regeneration = instance_create(0, 0, obj_regeneration);
goal_object.effects[effect_index] = regeneration;

regeneration.regeneration_heal = regeneration_heal;
regeneration.regeneration_time = time;
regeneration.regeneration_speed = regeneration_speed - 1;
regeneration.goal_object = goal_object;
regeneration.index = effect_index;
