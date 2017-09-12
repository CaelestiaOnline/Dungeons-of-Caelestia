/*
scr_draw_count(
    count,
    x,
    y
*/
var count = argument0;
var inv_x = argument1;
var inv_y = argument2;
var width = sprite_get_width(spr_inv_border)/2;
draw_set_font(fnt_inv_count);

if(count > 1) {
        draw_set_alpha(0.8);
        draw_set_colour(c_white);
        draw_circle(
            inv_x - width,
            inv_y + width,
            9,
            0
            );
        draw_set_colour(c_black);
        draw_set_alpha(1);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_text(
            inv_x - width,
            inv_y + width,
            count
            );
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        }
        
draw_set_colour(c_white);
