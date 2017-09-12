/*
scr_bullet_attack(
    damage,
    is_crit,
    type
    );
*/

var damage = argument0;
var is_crit = argument1;
var type = argument2;

var hit_x;
if(obj_player.attack_axis = 1) hit_x = obj_player.x + obj_player.spr_width/2;
if(obj_player.attack_axis = -1) hit_x = obj_player.x - obj_player.spr_width/2;

//Bullet
scr_create_bullet(
            hit_x,
            obj_player.y,
            damage,
            type,
            obj_player.attack_axis,
            is_crit
            );


