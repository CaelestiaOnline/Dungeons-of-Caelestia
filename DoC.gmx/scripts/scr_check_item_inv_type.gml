/*
scr_check_item_inv_type(
    Inventar-Typ,
    Item, das überprüft werden soll
)
Prüft, ob das Item in das mitgelieferte Inventar passt
*/

var inventory_type = argument0;
var current_item = argument1;

if(current_item = -1) return true;
if(inventory_type == inventory.inv_storage) return true; //jedes Item passt in Storage
else if(inventory_type == inventory.inv_items) {   //items
    if(item[current_item, 3] == "item") return true;
    else return false;
} else if(inventory_type == inventory.inv_pickups) { //pickups
    if(item[current_item, 3] == "pickup") return true;
    else return false;
} else if(inventory_type == inventory.inv_prim) { //prim
    if(item[current_item, 3] == "prim") return true;
    else return false;
} else if(inventory_type == inventory.inv_sec) { //sec
    if(item[current_item, 3] == "sec") return true;
    else return false;
} else if(inventory_type == inventory.inv_mag) { //mag
    if(item[current_item, 3] == "mag") return true;
    else return false;
}
show_debug_message("Ungültiger Inventar-Typus mitgliefert");
return false; //Ungültiges Inventar mitgeliefert
