/*
scr_attackspeed(
Verlangsamungs- (>1) / Beschleunigungsmultiplikator (>0, <1);
Dauer in sek;
Objekt, das beeinflusst wird;
)
*/
var multipl = argument0;
var time = argument1;
var object = argument2;

var attackspeed = instance_create (0, 0, obj_attackspeed);

attackspeed.multipl = multipl;
attackspeed.time = time*room_speed;
attackspeed.object = object;

//Maximale Gesw. des Objekts
if(object == obj_player) var max_speed = player_stats.attack_speed;
else var max_speed = object.attack_speed;

attackspeed.max_speed = max_speed;
