/*
scr_attack_speed(
    Verlangsamungs- (>0; <1) / Beschleunigungsmultiplikator (>1);
    Dauer in steps;
    Objekt, das beeinflusst wird;
)
*/
var multipl = argument0;
var time = argument1;
var goal_object = argument2;
var effect_index = effect.attack_speed;

if(goal_object.effects[effect_index] != -1) {
    goal_object.effects[effect_index].alarm[0] += time;
    exit;
}

var attack_speed = instance_create (0, 0, obj_attack_speed);
goal_object.effects[effect_index] = attack_speed;

attack_speed.multipl = multipl;
attack_speed.alarm[0] = time;
attack_speed.goal_object = goal_object;

if(goal_object == obj_player) player_stats.attack_speed_mult_effect = multipl;
else goal_object.attack_speed_mult = multipl;
