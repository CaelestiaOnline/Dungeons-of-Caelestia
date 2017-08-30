/*
scr_effect_mana_regeneration(
    Mana, die pro Zeiteinheit regeneriert werden,
    Zeiteinheit in steps,
    Dauer in Steps,
);
*/

var mana = argument0;
var mspeed = argument1;
var time = argument2;
var goal_object = obj_player;
var effect_index = effect.mana_regeneration;

if(!instance_exists(goal_object)) exit;
if(goal_object == player_stats) goal_object = player_stats;

if(goal_object.effects[effect_index] != -1) {
    goal_object.effects[effect_index].effect_time += time;
    exit;
}

var mregeneration = instance_create(0, 0, obj_mana_regeneration);
goal_object.effects[effect_index] = mregeneration;

mregeneration.mregeneration_heal = mana;
mregeneration.effect_time = time;
mregeneration.mregeneration_speed = mspeed - 1;
mregeneration.goal_object = goal_object;
