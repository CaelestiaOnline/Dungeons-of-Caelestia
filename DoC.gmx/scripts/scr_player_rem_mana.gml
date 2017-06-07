/*
scr_player_rem_mana(
    Mana, das abgezogen werden soll
*/

var mana = argument0;
var mana_copy = player_stats.mana;

mana_copy = mana_copy - mana;
if(mana_copy < 0) {
    return false;
}
player_stats.mana = mana_copy;
return true;
