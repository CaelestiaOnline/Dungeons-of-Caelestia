/*
scr_melee_attack(
    damage,
    is_crit,
    );
*/

var damage = argument0;
var is_crit = argument1;

stats.melee_attacks_done += 1;

var hit_x;
if(obj_player.attack_axis = 1) hit_x = obj_player.x + sprite_get_width(obj_player.sprite_index)/2 - 10;
if(obj_player.attack_axis = -1) hit_x = obj_player.x - sprite_get_width(obj_player.sprite_index)/2 - sprite_get_width(spr_hitbox) + 10;

//Hitbox
scr_create_hitbox(
    hit_x,
    obj_player.y,
    damage,
    is_crit
);
            
//Hitmark
scr_create_hitmark(
    hit_x,
    obj_player.y,
    is_crit,
    obj_player.attack_axis,
    obj_player
);



