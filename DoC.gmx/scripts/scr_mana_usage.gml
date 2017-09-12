/*
scr_mana_usage(
    mana
);
*/

var mana_usage = argument0;

switch(mana_usage) {
    case -1:
        return "All";
    default:
        return string(mana_usage);
}
