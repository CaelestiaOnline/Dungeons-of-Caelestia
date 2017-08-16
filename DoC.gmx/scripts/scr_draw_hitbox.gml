/*
scr_draw_hitbox(

);
*/

draw_set_colour(c_red);
draw_set_alpha(0.5);

/*
if(mask_index = sprite_index) {
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
} else {
    draw_sprite(mask_index, 0, x, y);
}
*/
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);

draw_set_colour(c_white);
draw_set_alpha(1);
