/*
scr_heal_orb_drop(
    x,
    y

);
*/

var heal_x = argument0;
var heal_y = argument1;

var drop_chance = 5;

var chance = irandom(99) + 1;

if(chance <= drop_chance) {
    var heal_orb = instance_create(heal_x, heal_y, obj_heal_orb);
}
