/*scr_circlefade(
Raum der nach der Überblendung betreten wird,
Geschwindigkeit, mit der sich die Überblendung ausbreitet
);
*/

var circlefade;
circlefade = instance_create(0, 0, obj_circlefade);
circlefade.pre_x2 = choose(0, window_get_width());
circlefade.pre_y2 = choose(0, window_get_height());
circlefade.goal = argument0;
circlefade.xfactor = argument1;
