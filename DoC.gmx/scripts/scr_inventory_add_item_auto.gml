/*
scr_inventory_add_item_auto(
    Item,
    Anzahl
)
*/

var current_item = argument0; 
var count = argument1;

var current_inventory_type = scr_inventory_get_item_inv_type(current_item);

if(inventory_type == current_inventory_type) return false;

if(!inventory_type) return false;

//Wenn das Item schon vorhanden ist, count erhöhen
for(i = 0; i < current_inventory_type.max_item_slots; i++) {
    if(current_inventory_type.inv[i] == current_item) {
        if(current_inventory_type.count[i] + count <= item[current_item, 4]) {
            current_inventory_type.count[i] += count;
            return true;
        }
        else {
            var remained_count = (current_inventory_type.count[i] + count) -  item[current_item, 4];
            current_inventory_type.count[i] += item[current_item, 4] - current_inventory_type.count[i]; //Auffüllen   
            count = remained_count;
        }
    }
}

//Wenn noch nicht vorhanden, neuen Slot belegen
for(i = 0; i < current_inventory_type.max_item_slots; i++) {
    if(current_inventory_type.inv[i] == -1) {
        current_inventory_type.inv[i] = current_item;
        if(count <= item[current_item, 4]) {
            current_inventory_type.count[i] += count; //Count auf mitgelieferten count setzen
            return true;
        }
        else {
            current_inventory_type.count[i] = item[current_item, 4];
            count = count - item[current_item, 4];
        }
    }
}

show_debug_message("Inventar voll, gebe überschüssige Items zurück");
show_debug_message(string(count)+" * Index: "+string(current_item));
return string(count);
