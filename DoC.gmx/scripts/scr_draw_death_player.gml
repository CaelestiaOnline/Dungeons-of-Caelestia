/*
scr_draw_death_player(
    x,
    y,
    sprite
    );
*/

if(instance_exists(obj_player_body)) exit;

var body_x = argument0;
var body_y = argument1;
var sprite = argument2;

var body = instance_create(body_x, body_y, obj_player_body);
body.sprite = sprite;
