/*
scr_crit_attack(
    normaler Schaden,
    Kritschaden
    Chance des Krits
);
*/

var damage_normal = argument0;
var damage_crit = argument1;
var chance_crit = argument2 * 100;

var chance = irandom(99) + 1;

if(chance > chance_crit) {
    return damage_normal;
} else {
    return damage_crit;
}
