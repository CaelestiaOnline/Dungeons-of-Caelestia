/*scr_circlefade(
Raum der nach der Überblendung betreten wird,
Geschwindigkeit, mit der sich die Überblendung ausbreitet
);
*/

var circlefade;
circlefade = instance_create(0, 0, obj_circlefade);
circlefade.pre_x2 = choose(0, view_wview[0]);
circlefade.pre_y2 = choose(0, view_hview[0]);
circlefade.goal = argument0;
circlefade.xfactor = argument1;
