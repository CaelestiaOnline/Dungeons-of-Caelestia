/*
scr_effect_strength(
    Stärkefaktor,
    Dauer in Steps,
    Objekt, das beeinflusst wird
);
*/

var multiplicator = argument0;
var time = argument1;
var goal_object = argument2;
var effect_index = effect.strength;

if(!instance_exists(goal_object)) exit;
if(goal_object == obj_player) goal_object = player_stats;

if(goal_object.effects[effect_index] != -1) {
    goal_object.effects[effect_index].alarm[0] = time;
    exit;
}

var strength = instance_create(0, 0, obj_strength);
goal_object.effects[effect_index] = strength;

strength.strength_multiplicator = multiplicator;
strength.alarm[0] = time - 1;
strength.goal_object = goal_object;

///Stärkefaktor erhöhen
if(goal_object == player_stats) player_stats.strength_mult_effect = multiplicator;
else goal_object.strength_mult_effect = multiplicator;
