/*scr_circlefade(
Raum der nach der Überblendung betreten wird,
Geschwindigkeit, mit der sich die Überblendung ausbreitet
);
*/

var circlefade;
circlefade = instance_create(0, 0, obj_circlefade);
circlefade.goal = argument0;
circlefade.xfactor = argument1;
