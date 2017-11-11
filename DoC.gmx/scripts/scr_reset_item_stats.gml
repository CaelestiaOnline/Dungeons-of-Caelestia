/*
scr_reset_item_stats(

);
*/

for(var i = 0; i < array_length_1d( inv_hud.item_stats_heading_array); i++) {
     inv_hud.item_stats_heading_array[i] = 0;
}

for(var i = 0; i < array_length_1d( inv_hud.item_stats_array); i++) {
     inv_hud.item_stats_array[i] = 0;
}

inv_hud.item_stats_heading_colour = c_white;

inventory.item_stats_title = inventory.item_stats_title_old;
inventory.item_stats_desc = inventory.item_stats_desc_old;
