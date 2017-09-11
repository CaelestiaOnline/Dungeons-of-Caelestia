/*
scr_inventory_clear_all(

);
*/

var i = 0;

//Pickups
for(i = 0; i < inventory.inv_pickups.max_item_slots; i++) {
    scr_inventory_rem_item_slot(inventory.inv_pickups, i);
}

//Items
for(i = 0; i < inventory.inv_items.max_item_slots; i++) {
    scr_inventory_rem_item_slot(inventory.inv_items, i);
}

//Storage
for(i = 0; i < inventory.inv_storage.max_item_slots; i++) {
    scr_inventory_rem_item_slot(inventory.inv_storage, i);
}

//Prim
for(i = 0; i < inventory.inv_prim.max_item_slots; i++) {
    scr_inventory_rem_item_slot(inventory.inv_prim, i);
}


//Sec
for(i = 0; i < inventory.inv_sec.max_item_slots; i++) {
    scr_inventory_rem_item_slot(inventory.inv_sec, i);
}

//Mag
for(i = 0; i < inventory.inv_mag.max_item_slots; i++) {
    scr_inventory_rem_item_slot(inventory.inv_mag, i);
}
