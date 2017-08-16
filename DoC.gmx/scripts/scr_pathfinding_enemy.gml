/*
scr_pathfinding_enemy(

);
*/

scr_set_depth();

var player_colbox_height = sprite_get_height(obj_player.mask_index)/2;
var colbox_height = sprite_get_height(mask_index)/2;

//Angriff
if(    !collision_line(obj_player.x, obj_player.y - player_colbox_height, x, y - colbox_height, obj_hindernis, false, false)
    && !collision_line(obj_player.x, obj_player.y + player_colbox_height, x, y + colbox_height, obj_hindernis, false, false)
    && y >= obj_player.y - player_colbox_height && y <= obj_player.y + player_colbox_height
    && abs(obj_player.x - x) < max_distance && alarm_get(1) == -1) {
        //Angriff
        attack_ready = true;
        if(alarm_get(0) == -1) alarm_set(0, attack_speed + random_range(-5, 5));
}
if(alarm_get(0) == -1) {
if(path_get_length(path) > 0) {
    move += acc;
} 
} else {
    move = 0;
}
    

move = clamp(move, 0, max_speed);

//Weg zu Charakter finden
if(alarm_get(0) == -1) {
if(x >= obj_player.x) {
    x_axis_mirror = 1;
    image_xscale = -1;
}
if(x < obj_player.x) {
    x_axis_mirror = -1;
    image_xscale = 1;
}
}

if(alarm_get(1) == -1) {
    var new_min_distance = min_distance;
} else {
    var new_min_distance = safety_distance;
}

var real_min_distance = (new_min_distance+1) * x_axis_mirror;

if(place_meeting(obj_player.x + real_min_distance, obj_player.y, obj_hindernis)
|| place_meeting(obj_player.x + x_axis_mirror, obj_player.y, obj_hindernis)  ) {
    x_axis_mirror *= -1;
    real_min_distance = (new_min_distance+1) * x_axis_mirror;
}
//show_debug_message("START");
for(var i = real_min_distance; i != 0; i-= sign(x_axis_mirror)) {
    if(    collision_line(obj_player.x, obj_player.y - player_colbox_height, x, y - colbox_height, obj_hindernis, false, false)
        || collision_line(obj_player.x, obj_player.y + player_colbox_height, x, y + colbox_height, obj_hindernis, false, false)) {
        real_min_distance -= x_axis_mirror;
        //show_debug_message("DISTANCE: " + string(real_min_distance));
    } else {
        //show_debug_message("BEENDE");
        break;
    }
}
//show_debug_message("STOP");

if(mp_grid_path(global.grid, path, x, y, obj_player.x + real_min_distance, obj_player.y, true))
{
    path_start(path, move, path_action_stop, false);
}




