/*
scr_init_shadow(
    object (self),
    width,
    height,
    y_offset,
);
*/

var object = argument0;
var width = argument1;
var height = argument2;
var y_offset = argument3;

shadow_object = instance_create(0, 0, obj_draw_shadow);
shadow_object.object = object;
shadow_object.width = width;
shadow_object.height = height;
shadow_object.y_offset = 0;//y_offset;

return shadow_object;
