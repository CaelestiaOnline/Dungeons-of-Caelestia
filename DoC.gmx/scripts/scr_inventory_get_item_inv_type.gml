/*
scr_inventory_get_item_inv_type(
    Item, das überprüft werden soll
)
*/

var current_item = argument0;

if(current_item = -1) return false;

switch(item[current_item, 3]) {
    case "item":
        return inventory.inv_items;
    case "pickup":
        return inventory.inv_pickups;
    case "prim":
        return inventory.inv_prim;
    case "sec":
        return inventory.inv_sec;
    case "mag":
        return inventory.inv_mag;
    default:
        show_debug_message("Ungültiger Inventar-Typus mitgliefert");
        return false;
}

