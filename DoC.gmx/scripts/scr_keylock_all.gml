/*
scr_keylock_all(
    status
);
*/

var status = argument0;

//Bewegung
scr_keylock_movement(status);

//Abilities
scr_keylock_abilities(status);

//Pickup Menu
scr_keylock_pickupmenu(status);

//Action
admin.action_key_locked = status;

//Inventar
admin.inventory_key_locked = status;

//Pause Menu
admin.pause_menu_key_locked = status;



