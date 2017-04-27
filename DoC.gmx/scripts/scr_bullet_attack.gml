/*
scr_bullet_attack(
    damage,
    type,
    bullet_speed,
    attack_speed
    );
*/
var damage = argument0;
var type = argument1;
var bullet_speed = argument2; 
var attack_speed = argument3;


///Angriff

if(admin.prim_attack_key_pressed) {
    if(alarm_get(0) == -1) {
    if(obj_player.attack_axis = 1) {
        //Hitbox rechts
        scr_create_bullet(
            obj_player.x + obj_player.spr_width/2,
            obj_player.y,
            damage,
            type,
            bullet_speed
            );
    }
    if(obj_player.attack_axis = -1) {
        //Hitbox links
        scr_create_bullet(
            obj_player.x - obj_player.spr_width/2,
            obj_player.y,
            damage,
            type,
            bullet_speed * -1
            );
    }
    if(alarm_get(0) == -1) alarm_set(0, attack_speed);
    }
}

if(admin.prim_attack_key) {
    if(alarm_get(0) == -1) {
        if(obj_player.attack_axis = 1) {
            //Hitbox rechts
            scr_create_bullet(
                obj_player.x + obj_player.spr_width/2,
                obj_player.y,
                damage,
                type,
                bullet_speed
            );   
        }
        if(obj_player.attack_axis = -1) {
            //Hitbox rechts
            scr_create_bullet(
                obj_player.x + obj_player.spr_width/2,
                obj_player.y,
                damage,
                type,
                bullet_speed * -1
            );
        }
    }
    if(alarm_get(0) == -1) alarm_set(0, attack_speed);
}

