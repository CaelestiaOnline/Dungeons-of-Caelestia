/*
scr_dealt_damage(
    x,
    y,
    damage
);
*/
var ind_x = argument0;
var ind_y = argument1;
var damage = argument2;
var damage_ind = instance_create(ind_x, ind_y, obj_damage_ind);
damage_ind.damage = damage;
