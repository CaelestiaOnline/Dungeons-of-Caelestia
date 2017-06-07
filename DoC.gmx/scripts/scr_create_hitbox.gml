/*
scr_create_hitbox(
    x,
    y,
    damage
*/
var hitbox_x = argument0;
var hitbox_y = argument1;
var damage = argument2;

var hitbox;

hitbox = instance_create(hitbox_x, hitbox_y, obj_hitbox_melee);
hitbox.damage = damage;
