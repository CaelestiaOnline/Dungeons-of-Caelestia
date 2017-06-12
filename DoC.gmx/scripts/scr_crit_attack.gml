/*
scr_crit_attack(
    Chance des Krits
);
*/

var chance_crit = argument0 * 100;

var chance = irandom(99) + 1;

if(chance > chance_crit) {
    return false;
} else {
    return true;
}
