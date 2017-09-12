/*
scr_draw_slots(
    x,
    y
*/
var width = sprite_get_width(spr_inv_border)/2;
var inv_x = argument0 + width;
var inv_y = argument1 + width;



//Zeichne Inventar
draw_set_colour(c_white);
draw_set_font(fnt_hud);
draw_set_halign(fa_center);
draw_set_alpha(1);

//Gehe durch alle Slots
for(j = 0; j < 7; j++) {
for(i = 0; i < 5; i++) {
    //Rahmen der Slots
    draw_sprite(spr_inv_border_bg,
    0,
    inv_x + (i*width*2 + inventory.inv_slot_dist*i),
    inv_y + (j*width*2 + inventory.inv_slot_dist*j),
    );
}
}

