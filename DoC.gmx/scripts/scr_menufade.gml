/*scr_menufade(
    true für jeweiliges menü öffnen und umgekehrt
    Geschwindigkeit, mit der sich die Überblendung ausbreitet
);
*/
if(instance_exists(obj_fade)) exit;
if(!admin.in_game) exit;

if(instance_exists(obj_mecha_hand)) obj_mecha_hand.phase2 = true;

scr_keylock_ingamemenu(argument0);

var circlefade;
circlefade = instance_create(0, 0, obj_menufade);
circlefade.status = argument0;
circlefade.xfactor = 120;

