/*
scr_inventory_rem_item(
    Inventar, aus dem das Item entfernt werden soll,
    Slot,
    count
)
*/
var inventory_type = argument0;
var slot = argument1;
var count = argument2;

if(inventory_type.inv[slot] != -1) {
    if(inventory_type.count[slot] - count >= 0) {
        inventory_type.count[slot] -= count;
        if(inventory_type.count[slot] == 0) inventory_type.inv[slot] = -1;
        return true;
    } else {
        return false;
    }
}
return false;
