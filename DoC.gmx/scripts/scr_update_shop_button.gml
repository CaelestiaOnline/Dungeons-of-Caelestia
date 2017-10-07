/*
scr_update_shop_button(
    
);
*/

var type = global.shop_type_index;

var shop_menu = obj_hub_shop_menu;

with(obj_hub_button_shop_getitem) instance_destroy();

//Erzeuge leeres Array
for(var i = 0; i < items.count; i++) {
    item_index_array[i] = -1;
}

//Setze passende Indices in Array
for(var i = 0; i < items.count; i++) {
    if(item[i, 3] == type) {
       for(var j = 0; j < items.count; j++) {
            if(item_index_array[j] == -1) {
                item_index_array[j] = i;
                break;
            }
       }
    }
}


//Ordne Arraystelle zu Slotstelle zu
for(var i = 0; i < items.count; i++) {
    var x_pos = i mod obj_hub_shop_menu.max_slots;
    var y_pos = i div obj_hub_shop_menu.max_slots;
    if(item_index_array[i] != -1) {
        shop_menu.shop_button[x_pos, y_pos] = instance_create(shop_menu.shop_button_x[x_pos, y_pos], shop_menu.shop_button_y[x_pos, y_pos], obj_hub_button_shop_getitem);
        shop_menu.shop_button[x_pos, y_pos].button_item = item_index_array[i];
    }
}


