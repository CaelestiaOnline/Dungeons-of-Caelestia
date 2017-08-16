/*
///scr_player_set_persistent(
    persistent  
);
*/

var is_persistent = argument0;

if(!instance_exists(obj_player)) exit;

obj_player.persistent = is_persistent;

if(!instance_exists(obj_player.shadow_object)) exit; 

obj_player.shadow_object.persistent = is_persistent;


