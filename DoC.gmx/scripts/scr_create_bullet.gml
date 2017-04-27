/*
scr_create_hitbox(
    x,
    y,
    damage,
    type,
    direction
*/
var bullet_x = argument0;
var bullet_y = argument1;
var damage = argument2;
var type = argument3;
var dir = argument4;

var bullet;

bullet = instance_create(bullet_x, bullet_y, type);
bullet.damage = damage;
if(dir != 0) bullet.hspeed = dir;
bullet.image_xscale = sign(dir);
