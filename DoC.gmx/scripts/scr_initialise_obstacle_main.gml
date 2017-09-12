/*
scr_initialise_obstacle_main(
    hp,
    draw_shadow,
    shadow_width
);
*/

//HP
hp = argument0;

//Schatten
draw_shadow = argument1;
var shadow_width = argument2;
if(shadow_width == -1) shadow_width = abs(bbox_right - bbox_left)/2 + 4;
shadow_object = 0;
if(draw_shadow) {
    shadow_object = scr_init_shadow(
        self,
        shadow_width,
        12,
        28
        );
}

explosion_colour = c_black;

//Set depth
scr_set_depth();

