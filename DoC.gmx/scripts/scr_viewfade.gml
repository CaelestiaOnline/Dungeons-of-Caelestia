/*
scr_viewfade(
Raum der nach der Überblendung betreten wird,
Geschwindigkeit, mit der sich die Überblendung ausbreitet
);
*/

if(instance_exists(obj_fade)) exit;

var sidefade;
sidefade = instance_create(0, 0, obj_viewfade);
sidefade.goal = argument0;
sidefade.xfactor = argument1;

