/*
scr_effect_resistance(
    Resistenzfaktor,
    Dauer in Steps,
    Objekt, das beeinflusst wird
);
*/
var multiplicator = argument0;
var time = argument1;
var goal_object = argument2;
var effect_index = effect.resistance;

if(goal_object.effects[effect.resistance] != -1) {
    goal_object.effects[effect.resistance].resistance_time += time;
    exit;
}

var resistance = instance_create(0, 0, obj_resistance);

resistance.resistance_multiplicator = multiplicator;
resistance.resistance_time = time;
resistance.goal_object = goal_object;
