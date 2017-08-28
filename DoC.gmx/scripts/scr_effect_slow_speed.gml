/*
scr_slow/speed(
Verlangsamungs- (>0; <1) / Beschleunigungsmultiplikator (>1);
Dauer in steps;
Objekt, das beeinflusst wird;
)
*/
var multipl = argument0;
var time = argument1;
var goal_object = argument2;
var effect_index = effect.slowness;

if(sign(multipl) <= 1) effect_index = effect.slowness;
else effect_index = effect.speed;

if(goal_object.effects[effect_index] != -1) {
    goal_object.effects[effect_index].alarm[0] += time;
    exit;
}

var slow = instance_create(0, 0, obj_slow_speed);
goal_object.effects[effect_index] = slow;

slow.multipl = multipl;
slow.alarm[0] = time;
slow.goal_object = goal_object;
slow.index = effect_index;

if(goal_object == obj_player) player_stats.speed_mult_effect = multipl;
else goal_object.speed_mult = multipl;
