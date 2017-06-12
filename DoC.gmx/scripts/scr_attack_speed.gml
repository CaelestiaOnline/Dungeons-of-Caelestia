/*
scr_slow/speed(
    Verlangsamungs- (>0; <1) / Beschleunigungsmultiplikator (>1);
    Dauer in steps;
    Objekt, das beeinflusst wird;
)
*/
var multipl = argument0;
var time = argument1;
var object = argument2;

var attack_speed = instance_create (0, 0, obj_attack_speed);

attack_speed.multipl = multipl;
attack_speed.alarm[0] = time;
attack_speed.object = object;

if(object == obj_player) player_stats.attack_speed_mult_effect = multipl;
else object.attack_speed_mult = multipl;
