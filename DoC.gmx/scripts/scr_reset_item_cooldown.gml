/*
scr_reset_item_cooldown(

);
*/

var inventory_type = inventory.inv_prim;
for(i = 0; i < inventory_type.max_item_slots; i++) {
    if(inventory_type.real_item_object[i] != 0) {
        inventory_type.real_item_object[i].alarm[0] = -1;
    }
}

var inventory_type = inventory.inv_sec;
for(i = 0; i < inventory_type.max_item_slots; i++) {
    if(inventory_type.real_item_object[i] != 0) {
        inventory_type.real_item_object[i].alarm[0] = -1;
    }
}

var inventory_type = inventory.inv_mag;
for(i = 0; i < inventory_type.max_item_slots; i++) {
    if(inventory_type.real_item_object[i] != 0) {
        inventory_type.real_item_object[i].alarm[0] = -1;
    }
}

var inventory_type = inventory.inv_items;
for(i = 0; i < inventory_type.max_item_slots; i++) {
    if(inventory_type.real_item_object[i] != 0) {
        inventory_type.real_item_object[i].alarm[0] = -1;
    }
}

with(obj_item_object_stats_storer) {
    if(alarm_get(0) > -1) {
        instance_destroy();
    }
}
