/*
scr_inventory_add_item(
    Inventar, in das das Item gelegt werden soll,
    Item,
    Anzahl,
    Slot,
    vorheriges Item
)
*/

var inventory_type = argument0;
var current_item = argument1; 
var count = argument2;
var i = argument3; //Slot
var old_item = argument4;

show_debug_message("scr_inventory_add_item wurde gestartet!");

//Prüfe, ob das richtige Inventar mitgeliefert wurde
if(!scr_check_item_inv_type(inventory_type, current_item)) { 
    return false;
}

show_debug_message("Richtiges Inventar!");

//Wenn das Item schon vorhanden ist, count erhöhen
if(old_item == current_item) {
    show_debug_message("Gleiches Item!");
    if(inventory_type.count[i] + count <= item[current_item, 4]) {
        inventory_type.count[i] += count;
        show_debug_message("Sollte funktioniert haben!");
        return true;
    }
    else {
        var remained_count = (inventory_type.count[i] + count) -  item[current_item, 4];
        inventory_type.count[i] += item[current_item, 4] - inventory_type.count[i]; //Auffüllen   
        count = remained_count;
        show_debug_message("Sollte auch funktioniert haben!");
    }
} else if(inventory_type.inv[i] == -1) { //Wenn der Slot leer ist
    show_debug_message("Gleiches Item wurde übersprungen!");
    show_debug_message("Slot leer!");
    inventory_type.inv[i] = current_item;
    if(count <=  item[current_item, 4]) {
        inventory_type.count[i] += count; //Count auf mitgelieferten count setzen
        return true;
    }
    else { //Wenn mehr Items als die max_anzahl mitgeliefert wurden
        inventory_type.count[i] = item[current_item, 4];
        count = count - item[current_item, 4];
    }
}

show_debug_message("Slot voll, gebe überschüssige Items zurück");
show_debug_message(string(count)+" * Index: "+string(current_item));
return string(count);
