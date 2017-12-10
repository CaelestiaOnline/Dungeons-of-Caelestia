/*
scr_draw_char(
);
*/

for(var i = 0; i < char_parts.count; i++) {
    draw_sprite_ext(player_stats.char_sprite[i], player_stats.char_sprite_image_number[i], x + player_stats.char_sprite_x_offset[i], y + player_stats.char_sprite_y_offset[i], image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

