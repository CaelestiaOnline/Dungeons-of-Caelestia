/*
scr_inventory_add_item(
    Inventar, in das das Item gelegt werden soll,
    Item,
    Anzahl
)
*/

var inventory_type = argument0;
var current_item = argument1; 
var count = argument2;

//Prüfe, ob das richtige Inventar mitgeliefert wurde
if(!scr_check_item_inv_type(inventory_type, current_item)) { 
    return false;
}

//Wenn das Item schon vorhanden ist, count erhöhen
for(i = 0; i < inventory_type.max_item_slots; i++) {
    if(inventory_type.inv[i] == current_item) {
        if(inventory_type.count[i] + count <= item[current_item, 4]) {
            inventory_type.count[i] += count;
            return true;
        }
        else {
            var remained_count = (inventory_type.count[i] + count) -  item[current_item, 4];
            inventory_type.count[i] += item[current_item, 4] - inventory_type.count[i]; //Auffüllen   
            count = remained_count;
        }
    }
}

//Wenn noch nicht vorhanden, neuen Slot belegen
for(i = 0; i < inventory_type.max_item_slots; i++) {
    if(inventory_type.inv[i] == -1) {
        inventory_type.inv[i] = current_item;
        if(count <=  item[current_item, 4]) {
            inventory_type.count[i] += count; //Count auf mitgelieferten count setzen
            return true;
        }
        else {
            inventory_type.count[i] = item[current_item, 4];
            count = count - item[current_item, 4];
        }
    }
}

show_debug_message("Inventar voll, gebe überschüssige Items zurück");
show_debug_message(string(count)+" * Index: "+string(current_item));
return string(count);
