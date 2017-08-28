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

if(goal_object.effects[effect.strength] != -1) {
    goal_object.effects[effect.strength].fire_time += time;
    exit;
}

var strength = instance_create(0, 0, obj_strength);

strength.strength_multiplicator = multiplicator;
strength.strength_time = time;
strength.goal_object = goal_object;
