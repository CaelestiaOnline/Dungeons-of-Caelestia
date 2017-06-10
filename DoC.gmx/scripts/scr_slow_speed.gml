/*
scr_slow/speed(
Verlangsamungs- (>0; <1) / Beschleunigungsmultiplikator (>1);
Dauer in sek;
Objekt, das beeinflusst wird;
)
*/
var multipl = argument0;
var time = argument1;
var object = argument2;

var slow = instance_create (0, 0, obj_slow_speed);

slow.multipl = multipl;
slow.time = time*60;
slow.object = object;

//Maximale Gesw. des Objekts
if(object == obj_player) var max_speed = obj_player_stats.max_player_speed;
else var max_speed = object.max_speed;

slow.max_speed = max_speed;
