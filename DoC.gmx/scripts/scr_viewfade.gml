/*
scr_viewfade(
Raum der nach der Überblendung betreten wird,
Geschwindigkeit, mit der sich die Überblendung ausbreitet
);
*/

if(instance_exists(obj_fade)) exit;

view_visible[0] = false;

view_visible[1] = true;
view_wview[1] = 1920;
view_hview[1] = 1080;

var sidefade;
sidefade = instance_create(0, 0, obj_viewfade);
sidefade.goal = argument0;
sidefade.xfactor = argument1* 0 + 30;

