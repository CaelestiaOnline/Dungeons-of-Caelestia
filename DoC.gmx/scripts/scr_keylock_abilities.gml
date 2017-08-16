/*
scr_keylock_abilities(
    status
);
*/

var status = argument0;

//Bewegung
admin.prim_attack_key_locked = status;
admin.sec_attack_key_locked = status;
admin.magic_key_locked = status;
