/*
scr_get_char_sprite(
    char_index
);
*/

var char_index = argument0;
var char_sprite = -1;

for(var i = 0; i < char_parts.count; i++) {
    char_sprite[i] = asset_get_index("spr_char_" + string(char_index) + "_" + string(i));
    player_stats.char_sprite_image_index[i] = sprite_get_number(char_sprite[i]);
}

return char_sprite;
