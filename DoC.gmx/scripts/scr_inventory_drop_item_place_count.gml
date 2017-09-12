/*
scr_inventory_drop_item(
    Item,
    x,
    y,
    count
*/

var drop_item = argument0;
var drop_x = argument1;
var drop_y = argument2;
var count = argument3;
var ground_item;

if(!admin.playing) {
    var ground_item_holder;
    ground_item_holder = instance_create(0, 0, obj_ground_item_holder);
    if(drop_x != -1 && drop_y != -1) {
        ground_item_holder.drop_x = drop_x + random_range(-5, 5);
        ground_item_holder.drop_y = drop_y + random_range(-5, 5);
    } else {
        ground_item_holder.drop_x = drop_x;
        ground_item_holder.drop_y = drop_y;
    }
    ground_item_holder.drop_item = drop_item;
    ground_item_holder.count = count;
} else repeat(count) {
    if(drop_x == -1 && drop_y == -1) {
        drop_x = obj_player.x;
        drop_y = obj_player.y;
    }
    ground_item = instance_create(drop_x + random_range(-5, 5), drop_y + random_range(-5, 5), obj_ground_item);
    ground_item.ground_item = drop_item;
}
