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

if(goal_object.effects[effect.mana_regeneration] != -1) {
    goal_object.effects[effect.mana_regeneration].mregeneration_time += time;
    exit;
}

var mregeneration = instance_create(0, 0, obj_mana_regeneration);

mregeneration.mregeneration_heal = mana;
mregeneration.mregeneration_time = time;
mregeneration.mregeneration_speed = mspeed;
mregeneration.goal_object = goal_object;
