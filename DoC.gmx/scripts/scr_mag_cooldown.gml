/*
scr_mana_cooldown(
    cooldown
);
*/

var cooldown = argument0;

switch(cooldown) {
    case -2:
        return "-/-";
    default:
        return string(cooldown/room_speed) + "s";
}
