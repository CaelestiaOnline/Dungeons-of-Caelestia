/*
scr_bullet_attack(
    damage,
    type,
    bullet_speed,
    attack_speed
    );
*/

if(!admin.playing) exit;
if(!player_stats.attack_ready) exit;

var damage_normal = argument0;
var damage_crit = argument1;
var type = argument2;
var bullet_speed = argument3; 
var attack_speed = argument4;
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
        scr_create_bullet(
            obj_player.x + obj_player.spr_width/2,
            obj_player.y,
            damage,
            type,
            bullet_speed,
            is_crit
            );
    }
    if(obj_player.attack_axis = -1) {
        //Hitbox links
        scr_create_bullet(
            obj_player.x - obj_player.spr_width/2,
            obj_player.y,
            damage,
            type,
            bullet_speed * -1,
            is_crit
            );
    }
    scr_attack_cooldown();
    }
}

