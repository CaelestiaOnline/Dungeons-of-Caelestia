/*
scr_update_char_sprite(
);
*/
if(!instance_exists(obj_player)) exit;
if(!admin.playing) exit;

var char_index = player_stats.char_index;
var moving = (obj_player.move_x != 0) || (obj_player.move_y != 0);

//Bewegung
//Crouch
if(obj_player.is_crouching) {
    for(var i = 0; i < char_parts.count; i++) {
        player_stats.char_sprite_y_offset[i] = 7;
    }
    player_stats.char_sprite_y_offset[char_parts.left_leg] = 0;
    player_stats.char_sprite_y_offset[char_parts.right_leg] = 0;
    player_stats.char_sprite_image_speed_mult[char_parts.left_leg] = 0.5;
    player_stats.char_sprite_image_speed_mult[char_parts.right_leg] = 0.5;
    if(moving) {
        player_stats.char_sprite[char_parts.left_leg] = asset_get_index("spr_char_" + string(player_stats.char_index) + "_" + string(char_parts.left_leg) + "_crouch");
        player_stats.char_sprite[char_parts.right_leg] = asset_get_index("spr_char_" + string(player_stats.char_index) + "_" + string(char_parts.right_leg) + "_crouch");
    } else {
        player_stats.char_sprite[char_parts.left_leg] = asset_get_index("spr_char_" + string(player_stats.char_index) + "_" + string(char_parts.left_leg) + "_crouch");
        player_stats.char_sprite[char_parts.right_leg] = asset_get_index("spr_char_" + string(player_stats.char_index) + "_" + string(char_parts.right_leg) + "_crouch");
    }
}
//Sprinting
if(obj_player.isSprinting) {
    for(var i = 0; i < char_parts.count; i++) {
        player_stats.char_sprite_y_offset[i] = 0;
    }
    player_stats.char_sprite_image_speed_mult[char_parts.left_leg] = 2;
    player_stats.char_sprite_image_speed_mult[char_parts.right_leg] = 2;
    if(moving) {
        player_stats.char_sprite[char_parts.left_leg] = asset_get_index("spr_char_" + string(player_stats.char_index) + "_" + string(char_parts.left_leg));
        player_stats.char_sprite[char_parts.right_leg] = asset_get_index("spr_char_" + string(player_stats.char_index) + "_" + string(char_parts.right_leg));
    } else {
        player_stats.char_sprite[char_parts.left_leg] = asset_get_index("spr_char_" + string(player_stats.char_index) + "_" + string(char_parts.left_leg));
        player_stats.char_sprite[char_parts.right_leg] = asset_get_index("spr_char_" + string(player_stats.char_index) + "_" + string(char_parts.right_leg));
    }
}
//Walk
if(!obj_player.isSprinting && !obj_player.is_crouching) {
    for(var i = 0; i < char_parts.count; i++) {
        player_stats.char_sprite_y_offset[i] = 0;
    }
    player_stats.char_sprite_image_speed_mult[char_parts.left_leg] = 1;
    player_stats.char_sprite_image_speed_mult[char_parts.right_leg] = 1;
    if(moving) {
        player_stats.char_sprite[char_parts.left_leg] = asset_get_index("spr_char_" + string(player_stats.char_index) + "_" + string(char_parts.left_leg));
        player_stats.char_sprite[char_parts.right_leg] = asset_get_index("spr_char_" + string(player_stats.char_index) + "_" + string(char_parts.right_leg));
    } else {
        player_stats.char_sprite[char_parts.left_leg] = asset_get_index("spr_char_" + string(player_stats.char_index) + "_" + string(char_parts.left_leg));
        player_stats.char_sprite[char_parts.right_leg] = asset_get_index("spr_char_" + string(player_stats.char_index) + "_" + string(char_parts.right_leg));
    }
}
