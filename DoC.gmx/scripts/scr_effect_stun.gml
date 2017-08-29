/*
scr_effect_stun(
    Dauer in Steps,
    Objekt, das beeinflusst wird
);
*/

var time = argument0;
var goal_object = argument1;
var effect_index = effect.stun;

if(!instance_exists(goal_object)) exit;
if(goal_object == obj_player) goal_object = player_stats;

if(goal_object.effects[effect_index] != -1) {
    goal_object.effects[effect_index].stun_time += time;
    exit;
}

var stun = instance_create(0, 0, obj_stun);
goal_object.effects[effect_index] = stun;

stun.alarm[0] = time - 1;
stun.goal_object = goal_object;

///Stun beginnen
if (goal_object == player_stats) scr_keylock_ingamemenu(true);
else {
    scr_effect_slow_speed(0, time, goal_object);
    scr_effect_attack_speed(0,  time, goal_object);
}
