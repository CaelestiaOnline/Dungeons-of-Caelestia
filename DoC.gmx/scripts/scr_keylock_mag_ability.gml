/*
scr_keylock_mag_ability(
    status
);
*/

var status = argument0;

if(admin.game_paused) exit;

scr_keylock_movement(status);
