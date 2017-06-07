/*
scr_bullet_attack_mag(
    damage,
    type,
    speed,
    mana
    );
*/
var damage = argument0;
var type = argument1;
var bullet_speed = argument2;
var mana = argument3;

///Angriff

if(admin.magic_key_pressed) {
    if(alarm_get(0) == -1) {
    var success = scr_player_rem_mana(mana);
    if(success) {
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
    }
    if(alarm_get(0) == -1) alarm_set(0, player_stats.attack_speed);
    }
}

if(admin.magic_key) {
    if(alarm_get(0) == -1) {
        var success = scr_player_rem_mana(mana);
        if(success) {
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
    }
    if(alarm_get(0) == -1) alarm_set(0, player_stats.attack_speed);
}

