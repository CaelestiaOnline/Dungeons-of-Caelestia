/*
scr_draw_death_enemy(
    x,
    y,
    sprite
    );
*/

var body_x = argument0;
var body_y = argument1;
var sprite = argument2;

var body = instance_create(body_x, body_y, obj_enemy_body);
body.sprite = sprite;

scr_draw_sign_box(spr_dead, -1, body);
