/*
scr_create_hitbox(
    x,
    y,
    damage,
    origin_object
*/
var hitbox_x = argument0;
var hitbox_y = argument1;
var damage = argument2;
var is_crit = argument3;
var origin_object = self;

var hitbox;

hitbox = instance_create(hitbox_x, hitbox_y, obj_hitbox_melee);
hitbox.damage = damage;
hitbox.is_crit = is_crit;
hitbox.origin_object = origin_object;
