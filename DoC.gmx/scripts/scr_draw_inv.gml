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

//Gehe durch alle Slots
for(i = 0; i < max_item_slots; i++) {
    //Rahmen der Slots
    draw_sprite(spr_inv_border,
    0,
    inv_x + (i*width*2 + inventory.inv_slot_dist),
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

