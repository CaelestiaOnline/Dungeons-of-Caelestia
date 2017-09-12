/*
scr_create_projectile(
    x,
    y,
    damage,
    type,
    direction,
    is_crit,
*/
var projectile_x = argument0;
var projectile_y = argument1;
var damage = argument2;
var type = argument3;
var dir = argument4;
var is_crit = argument5;
var origin_object = self;

var projectile;

projectile = instance_create(projectile_x, projectile_y, type);
projectile.damage = damage;
projectile.hspeed = projectile.hspeed*dir;
projectile.is_crit = is_crit;
projectile.origin_object = origin_object;
