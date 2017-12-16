/*
scr_update_monsterdex_button(
    
);
*/

var type = global.monsterdex_type_index;

with(obj_hub_button_monsterdex_getmonster) instance_destroy();

//Erzeuge leeres Array
for(var i = 0; i < array_length_1d(enemy_list); i++) {
    monster_index_array[i] = -1;
}

//Setze passende Indices in Array
for(var i = 0; i < array_length_1d(enemy_list); i++) {
    if(enemy_stats[i, 5] == type) {
       for(var j = 0; j < array_length_1d(enemy_list); j++) {
            if(monster_index_array[j] == -1) {
                monster_index_array[j] = enemy_list[i];
                break;
            }
       }
    }
}


//Ordne Arraystelle zu Slotstelle zu
for(var i = 0; i < array_length_1d(enemy_list); i++) {
    var x_pos = i mod obj_hub_monsterdex_menu.max_slots;
    var y_pos = i div obj_hub_monsterdex_menu.max_slots;
    if(monster_index_array[i] != -1) {
         obj_hub_monsterdex_menu.monsterdex_button[x_pos, y_pos] = instance_create( obj_hub_monsterdex_menu.monsterdex_button_x[x_pos, y_pos],  obj_hub_monsterdex_menu.monsterdex_button_y[x_pos, y_pos], obj_hub_button_monsterdex_getmonster);
         obj_hub_monsterdex_menu.monsterdex_button[x_pos, y_pos].button_monster = monster_index_array[i];
    }
}


