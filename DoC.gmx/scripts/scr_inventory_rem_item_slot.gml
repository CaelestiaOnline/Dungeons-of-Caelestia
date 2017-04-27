/*
scr_inventory_rem_item(
    Inventar, aus dem das Item entfernt werden soll,
    Slot
)
*/
var inventory_type = argument0;
var slot = argument1;

if(inventory_type.inv[slot] != -1) {
    inventory_type.count[slot] = 0;
    inventory_type.inv[slot] = -1;
    return true;
}
return false;
