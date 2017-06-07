/*
scr_inventory_add_item(
    Inventar, in das das Item gelegt werden soll,
    Item,
    Anzahl,
)
*/

var inventory_type = argument0;
var current_item = argument1; 
var count = argument2;
var max_count = item[current_item, 4];

//Prüfe, ob das richtige Inventar mitgeliefert wurde
if(!scr_check_item_inv_type(inventory_type, current_item)) {
    return false;
}

for(slot = 0; slot < inventory_type.max_item_slots; slot++) {
//Wenn was drin ist
if(inventory_type.inv[slot] != -1) {
    if(inventory_type.inv[slot] == current_item) {
        if((inventory_type.count[slot] + count) <= max_count) {
            inventory_type.count[slot] += count;
            return true;
        } else {
            var remained_count = (inventory_type.count[slot] + count) - max_count;
            inventory_type.count[slot] = max_count;
            if(remained_count > 0) {
                count = remained_count;
            }
        }
    }
}

}
//Alle gleichen Items wurden einsortiert
for(slot = 0; slot < inventory_type.max_item_slots; slot++) {
//Wenn der slot leer ist
if(inventory_type.inv[slot] == -1) {
    inventory_type.inv[slot] = current_item;
    if(count <= max_count) {
        inventory_type.count[slot] = count;
    }
    else {
        inventory_type.count[slot] = max_count;
        var remained_count = count - max_count;
        if(remained_count > 0) {
            count = remained_count;
        }
    }
}
}

if(count > 0) {
    scr_inventory_add_item(inventory_type, current_item, count)
}
return false;
