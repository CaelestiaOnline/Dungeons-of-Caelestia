/*scr_menu_to_inv_fade(
    true für jeweiliges menü öffnen und umgekehrt
    art des Menüs
    Geschwindigkeit, mit der sich die Überblendung ausbreitet
);
*/
if(instance_exists(obj_fade)) exit;
if(!admin.in_game) exit;

var circlefade;
circlefade = instance_create(0, 0, obj_menu_to_inv_fade);
circlefade.status = argument0;
circlefade.type = argument1;
circlefade.xfactor = 120;
