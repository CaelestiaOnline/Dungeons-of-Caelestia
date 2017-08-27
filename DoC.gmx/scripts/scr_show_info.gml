/*
scr_show_info(
    text
);
*/

//if(instance_exists(obj_info_box)) exit;
if(self.info_box != -1) exit;

var text = argument0;
var box_x = self.x;
var box_y = self.y - sprite_get_height(sprite_index) - 10 - sprite_get_width(spr_info_box)/2;
var origin_object = self;

info_box = instance_create(box_x, box_y, obj_info_box);
info_box.origin_object = origin_object;
info_box.text = text;
