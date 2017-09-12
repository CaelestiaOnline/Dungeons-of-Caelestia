/*
scr_inventory_add_item(
    Inventar, in das das Item gelegt werden soll,
    Item,
    Anzahl,
    Slot,
    altes Item im Slot,
    alter Count
)
*/

var inventory_type = argument0;
var current_item = argument1;
var count = argument2;
var slot = argument3;
var max_count = item[current_item, 4];
var old_item = argument4;
var old_count = argument5;

//Prüfe, ob das richtige Inventar mitgeliefert wurde
if(!scr_check_item_inv_type(inventory_type, current_item)) {
    return false;
}

/*
if Slot leer
    Item reinlegen
    if count <= als max count
        inv_count = count
        return true;
    else
        inv_count = max count
        remained count = count - max count
        return string remained count

else //also was drin
    if inv = current item //wenn gleiches Item
        if inv_count + count <=  max count //wenn kleiner gleich als max count
            inv count += count //inv_count setzen
            return true //alles passt
        else //wenn größer als max count
            remained count = (inv_count + count) - max_count //zurückbleibenden count speichern
            inv_count = max_count // inv_count auf max count setzen
            return string remained count //zurückgebliebenen count zurückgeben
    else //also anderes Item drin
        return false 
*/

if(old_item == -1) {
    inventory_type.inv[slot] = current_item;
    if(count <= max_count) {
        inventory_type.count[slot] = count;
        return true;
    }
    else {
        inventory_type.count[slot] = max_count;
        var remained_count = count - max_count;
        return string(remained_count);
    }
} else {
    if(old_item == current_item) {
        inventory_type.inv[slot] = current_item;
        if((old_count + count) <= max_count) {
            inventory_type.count[slot] += (count + old_count);
            return true;
        } else {
            var remained_count = (old_count + count) - max_count;
            inventory_type.count[slot] = max_count;
            show_debug_message("Remained Count: " + string(remained_count));
            return string(remained_count);
        }
    } else {
        inventory_type.inv[slot] = current_item;
        if(count <= max_count) {
            inventory_type.count[slot] = count;
            return true;
        }
        else {
            inventory_type.count[slot] = max_count;
            var remained_count = count - max_count;
            return string(remained_count);
        }
    }
}
