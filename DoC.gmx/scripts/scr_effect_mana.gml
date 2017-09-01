/*
scr_effect_mana(
    mana,
    goal_object
);
*/

var mana = argument0;
var goal_object = argument1;
var effect_index = effect.mana;
var time = room_speed;
var mregeneration_speed = round(room_speed/20);
var mregeneration_heal = mana div (1 / (mregeneration_speed / time));

if(!instance_exists(goal_object)) exit;
if(string(goal_object.object_index) == string(obj_player)) goal_object = player_stats;

if(goal_object.effects[effect_index] != -1) {
    goal_object.effects[effect_index].effect_time += time;
    exit;
}

var mregeneration = instance_create(0, 0, obj_mana_regeneration);
goal_object.effects[effect_index] = mregeneration;

mregeneration.mregeneration_heal = mregeneration_heal;
mregeneration.effect_time = time;
mregeneration.mregeneration_speed = mregeneration_speed - 1;
mregeneration.goal_object = goal_object;
mregeneration.index = effect_index;
