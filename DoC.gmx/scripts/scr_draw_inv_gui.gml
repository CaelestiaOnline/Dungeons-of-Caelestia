/*
scr_draw_inv(
    Inventar_Typ,
    x,
    y
*/
var inventory_type = argument0;
var max_item_slots = inventory_type.max_item_slots;
var inv_x = argument1;
var inv_y = argument2;
var width = sprite_get_width(spr_inv_border)/2;


//Zeichne Inventar
draw_set_colour(c_white);
draw_set_font(fnt_hud);
draw_set_halign(fa_center);
draw_set_alpha(1);

if(inventory_type == inventory.inv_pickups) {
draw_sprite(
    spr_inv_border_gui_highlight,
    0,
    inv_x + width + (inventory.menupos*width*2 + inventory.inv_slot_dist),
    inv_y,   
)
draw_set_colour(c_black);
draw_sprite(
    spr_inv_border_gui_arrow,
    0,
    inv_x + width + (inventory.menupos*width*2 + inventory.inv_slot_dist),
    inv_y + width + inventory.inv_slot_dist,
)
draw_set_colour(c_white);
}

//Gehe durch alle Slots
for(i = 0; i < max_item_slots; i++) {
    //Rahmen der Slots
    draw_sprite(spr_inv_border,
    0,
    inv_x + width + (i*width*2 + inventory.inv_slot_dist),
    inv_y
    );
    //Item-Sprite des Slots
    if(inv[i] != -1) {
        draw_sprite(spr_items,
        inv[i],
        inv_x + width + (i*width*2 + inventory.inv_slot_dist),
        inv_y
        );
    }
    //Anzahl der Item in den Slots
    scr_draw_count(
        inventory_type.count[i],
        inv_x + width + (i*width*2 + inventory.inv_slot_dist),
        inv_y
        );
    //Index des Items NOTE: nur zu Testzwecken, später entfernen!!!
   /* 
    draw_text(
        inventory_type.inv_x + 8 + (i*(sprite_get_width(spr_inv_border)+8)),
        inventory_type.inv_y - 25,
        string(inv[i])
    );
    */
}

if(inventory_type == inventory.inv_sec) {
    if(instance_exists(inventory.inv_sec.real_item_object[0])) {
        var countdown;
        countdown = inventory.inv_sec.real_item_object[0].alarm[0] / inventory.inv_sec.real_item_object[0].attack_speed;
        if(countdown > 1) countdown = 1;
        if(countdown < 0) countdown = 0;
        if(countdown >= 0) {
        draw_sprite_ext(
            spr_inv_border_gui_countdown,
            0,
            inv_x + inventory.inv_slot_dist,
            inv_y - width,
            countdown,
            1,
            0,
            c_white,
            1
        );
        }
    }
}
