/*
scr_effect_stun(
    Dauer in Steps,
    Objekt, das beeinflusst wird
);
*/
var time = argument0;
var goal_object = argument1;
var effect_index = effect.stun;

if(goal_object.effects[effect.stun] != -1) {
    goal_object.effects[effect.stun].stun_time += time;
    exit;
}

var stun = instance_create(0, 0, obj_stun);

stun.stun_time = time;
stun.goal_object = goal_object;
