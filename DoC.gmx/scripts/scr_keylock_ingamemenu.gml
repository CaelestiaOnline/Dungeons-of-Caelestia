/*
scr_keylock_ingamemenu(
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

