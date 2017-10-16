/*
scr_get_item_rarity_colour(
    item
);
*/

var item_index = argument0;

switch(item[item_index, 5]) {
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
