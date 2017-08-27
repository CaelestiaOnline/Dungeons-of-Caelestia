/*
scr_effect_regeneration(
    Hp, die pro Zeiteinheit regeneriert werden,
    Zeiteinheit in steps,
    Dauer in Steps,
    Objekt, das beeinflusst wird
);
*/
var hp = argument0;
var rspeed = argument1;
var time = argument2;
var goal_object = argument3;
var effect_index = effect.regeneration;

if(goal_object.effects[effect.regeneration] != -1) {
    goal_object.effects[effect.regeneration].regeneration_time += time;
    exit;
}

var regeneration = instance_create(0, 0, obj_regeneration);

regeneration.regeneration_heal = hp;
regeneration.regeneration_time = time;
regeneration.regeneration_speed = rspeed;
regeneration.goal_object = goal_object;
