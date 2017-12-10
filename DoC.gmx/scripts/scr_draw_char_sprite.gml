/*
scr_draw_char_sprite(
    char_sprite,
    x,
    y,
    image_xscale,
    image_yscale,
);
*/

var char_sprite = argument0;
var char_x = argument1;
var char_y = argument2;
var char_xscale = argument3;
var char_yscale = argument4;

for(var i = 0; i < char_parts.count; i++) {
    draw_sprite_ext(char_sprite[i], player_stats.char_sprite_image_number[i], char_x, char_y, char_xscale, char_yscale, 0, c_white, 1);
}

