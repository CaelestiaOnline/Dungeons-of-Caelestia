/*
scr_melee_attack(
    damage
    );
*/

if(!admin.playing) exit;

var damage_normal = argument0;
var damage_crit = argument1;
var chance_crit = player_stats.chance_crit;
var is_crit = false;
var damage = 0;

var is_crit = scr_crit_attack(chance_crit);
if(is_crit) damage = damage_crit;
else damage = damage_normal; 

///Angriff

if(admin.prim_attack_key_pressed || admin.prim_attack_key) {
    if(player_stats.alarm[1] == -1) {
    if(obj_player.attack_axis = 1) {
        //Hitbox rechts
        scr_create_hitbox(
            obj_player.x + obj_player.spr_width/2 + sprite_get_width(spr_hitbox)/2,
            obj_player.y,
            damage,
            is_crit
            );
        //Explosion rechts
        instance_create(
        obj_player.x + obj_player.spr_width/2 + sprite_get_width(spr_explosion)/2,
        obj_player.y,
        obj_explosion
        );
    }
    if(obj_player.attack_axis = -1) {
        //Hitbox links
        scr_create_hitbox(
            obj_player.x - obj_player.spr_width/2 - sprite_get_width(spr_hitbox)/2,
            obj_player.y,
            damage,
            is_crit
            );
        //Explosion links
        instance_create(
        obj_player.x - obj_player.spr_width/2 - sprite_get_width(spr_explosion)/2,
        obj_player.y,
        obj_explosion
        );
    }
    scr_attack_cooldown();
    }
}
