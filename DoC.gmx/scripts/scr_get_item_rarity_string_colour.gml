/*
scr_get_item_rarity_string_colour(
    rarity
);
*/

var item_rarity = argument0;

switch(item_rarity) {
    case "normal":
        return c_white;
    case "rare":
        return c_green;
    case "magic":
        return c_blue;
    case "epic":
        return c_purple;
    case "legendary":
        return c_yellow;
    default:
        return c_red;
}
