/*
scr_dealt_heal(
    x,
    y,
    heal
);
*/
var ind_x = argument0;
var ind_y = argument1;
var heal = argument2;

var heal_ind = instance_create(ind_x, ind_y, obj_heal_ind);
heal_ind.heal = heal;
