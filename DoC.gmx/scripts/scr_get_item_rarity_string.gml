/*
scr_get_item_rarity_string(
    item
);
*/

var item_index = argument0;

switch(item[item_index, 5]) {
    case "normal":
        return "NORMAL";
    case "rare":
        return "SELTEN";
    case "magic":
        return "MAGISCH";
    case "epic":
        return "EPISCH";
    case "legendary":
        return "LEGENDAER";
    default:
        return "-/-";
}
