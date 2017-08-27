/*
scr_invfade(
    true für jeweiliges menü öffnen und false schließen
    Art des Untermenüs
    Geschwindigkeit, mit der sich die Überblendung ausbreitet
);
*/
if(instance_exists(obj_fade)) exit;
if(!admin.in_game) exit;

scr_keylock_ingamemenu(argument0);

var circlefade;
circlefade = instance_create(0, 0, obj_invfade);
circlefade.status = argument0;
circlefade.type = argument1;
circlefade.xfactor = 100;
