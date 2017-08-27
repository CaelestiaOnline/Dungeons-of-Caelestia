/*
scr_effect_fire(
    Feuerschaden,
    Dauer in Steps,
    Zeitabschnitt,
    Objekt, das beeinflusst wird
);
*/
var damage = argument0;
var time = argument1;
var fspeed = argument2;
var goal_object = argument3;
var effect_index = effect.fire;

if(goal_object.effects[effect.fire] != -1) {
    goal_object.effects[effect.fire].fire_time += time;
    exit;
}

var fire = instance_create(0, 0, obj_fire);

fire.fire_damage = damage;
fire.fire_time = time;
fire.fire_speed = fspeed;
fire.goal_object = goal_object;
