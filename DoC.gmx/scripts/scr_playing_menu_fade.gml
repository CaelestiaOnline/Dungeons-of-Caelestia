/*
scr_scr_playing_menu_fade(
    true für jeweiliges menü öffnen und false schließen
);
*/
if(instance_exists(obj_fade)) exit;
if(!admin.in_game) exit;

if(instance_exists(obj_mecha_hand)) obj_mecha_hand.phase2 = true;

scr_keylock_ingamemenu(argument1);

var circlefade;
circlefade = instance_create(0, 0, obj_playing_menu_fade);
circlefade.status = argument1;
circlefade.type = argument0;
circlefade.xfactor = 100;
circlefade.run_shop_object = self;
