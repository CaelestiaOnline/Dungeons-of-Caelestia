/*
scr_inventory_add_item_object(
    inventory_type,
    slot,
*/

var inventory_type = argument0;
var slot = argument1;

if(
    inventory_type == inventory.inv_items || 
    inventory_type == inventory.inv_prim ||
    inventory_type == inventory.inv_sec ||
    inventory_type == inventory.inv_mag
    ) {
inventory_type.item_object[slot] = item[inventory_type.inv[slot], 2];
return true
}
return false;
