/*
scr_draw_sign_box(
    sprite,
    y_offset
    object
*/

var sprite = argument0;
var y_offset = argument1;
var object = argument2;

if(y_offset == -1) y_offset = sprite_get_height(object.sprite_index)/2 + 40 + sprite_get_height(spr_sign_box)/2;

var sign_box = instance_create(object.x, object.y - y_offset, obj_sign_box);
sign_box.sprite = sprite;
sign_box.y_offset = y_offset;
sign_box.object = object;
