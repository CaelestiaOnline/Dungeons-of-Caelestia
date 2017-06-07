/*
scr_inventory_rem_item(
    Inventar, aus dem das Item entfernt werden soll,
    Item,
    Anzahl, die entfernt werden soll
)
*/
var inventory_type = argument0;
var current_item = argument1; 
var count = argument2;

for(i = 0; i < inventory_type.max_item_slots; i++) {
    if(inventory_type.inv[i] == current_item) {
        if(inventory_type.count[i] - count < 0) {
            return false;
        }
        else {
            inventory_type.count[i] -= count;
            if(inventory_type.count[i] == 0) {
                inventory_type.inv[i] = -1;
            }
            return true;
        }
    }
}
show_debug_message("Item nicht vorhanden!");
return false;
