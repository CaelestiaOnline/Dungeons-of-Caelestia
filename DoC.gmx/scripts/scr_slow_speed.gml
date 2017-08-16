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

var slow = instance_create (0, 0, obj_slow_speed);
object.effects[effects.slowness] = slow;

slow.multipl = multipl;
slow.alarm[0] = time;
slow.object = object;

if(object == obj_player) player_stats.speed_mult_effect = multipl;
else object.speed_mult = multipl;
