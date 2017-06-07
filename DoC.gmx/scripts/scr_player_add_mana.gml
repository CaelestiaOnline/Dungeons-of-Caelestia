/*
scr_player_add_mana(
    Mana, das addiert werden soll
*/

var mana = argument0;
var mana_copy = player_stats.mana;

mana_copy = mana_copy + mana;
if(mana_copy > player_stats.max_mana) mana_copy = player_stats.max_mana;

player_stats.mana = mana_copy;
