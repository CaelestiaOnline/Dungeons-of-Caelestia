/*
scr_inventory_search_item(
    Inventar, in das das Item gesucht werden soll,
    Item,
)
*/
var inventory_type = argument0;
var current_item = argument1; 

for(i = 0; i < inventory_type.max_item_slots; i++) {
    if(inventory_type.inv[i] == current_item) {
        return true;
    }
}
return false;
