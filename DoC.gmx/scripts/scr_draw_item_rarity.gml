/*
scr_draw_item_rarity(
    item
);

*/
var item_index = argument0;

button_colour = scr_get_item_rarity_colour(item_index);

//Rechteck bei Hovern
draw_set_colour(button_colour);
draw_set_alpha(0.3);
draw_rectangle(
    x - (width-8),
    y - (width-8),
    x + (width-8),
    y + (width-8),
    0
);
draw_set_alpha(1);


