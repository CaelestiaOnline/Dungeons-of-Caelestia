/*
scr_draw_buttons(
    Inventar-Typ,
    x,
    y,
)
*/

var inventory_type = argument0;
var button_x = argument1;
var button_y = argument2;
var width = sprite_get_width(spr_inv_border)/2;


//Gehe durch alle Slots
for(i = 0; i < inventory_type.max_item_slots; i++) {
    if(inventory_type.button[i] == 0) {
    inventory_type.button[i] = instance_create(
        button_x + (i*width*2 + inventory.inv_slot_dist),
        button_y,
        obj_inv_button);
    inventory_type.button[i].inventory_type = inventory_type;
    inventory_type.button[i].slot = i;
    }
}
