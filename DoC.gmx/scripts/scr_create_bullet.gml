/*
scr_create_hitbox(
    x,
    y,
    damage,
    type,
    direction,
    is_crit
*/
var bullet_x = argument0;
var bullet_y = argument1;
var damage = argument2;
var type = argument3;
var dir = argument4;
var is_crit = argument5;

var bullet;

bullet = instance_create(bullet_x, bullet_y, type);
bullet.damage = damage;
bullet.hspeed = bullet.hspeed*dir;
bullet.image_xscale = dir;
bullet.is_crit = is_crit;
