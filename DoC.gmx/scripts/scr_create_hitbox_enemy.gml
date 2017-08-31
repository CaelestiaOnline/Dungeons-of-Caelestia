/*
scr_create_hitbox_enemy(
    x,
    y,
    damage
*/
var hitbox_x = argument0;
var hitbox_y = argument1;
var damage = argument2;
var is_crit = argument3;

var hitbox;

hitbox = instance_create(hitbox_x, hitbox_y, obj_hitbox_melee_enemy);
hitbox.damage = damage;
hitbox.is_crit = is_crit;
hitbox.origin_object = self;
