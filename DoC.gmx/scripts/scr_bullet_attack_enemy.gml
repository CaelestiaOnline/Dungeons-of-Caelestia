/*
scr_bullet_attack_enemy(
    schaden
    zu erzeugendes Objekt
    Objekt, das angreift
    )
*/
var damage = argument0;
var object_create = argument1;
var object_self = argument2;
var bullet_speed = 8;
//Angriff
if(alarm_get(0) == -1) {
    if(obj_player.x > object_self.x) {
        //Hitbox rechts
        scr_create_bullet(
            object_self.x + sprite_get_width(object_self.sprite_index)/2,
            object_self.y,
            damage,
            object_create,
            bullet_speed
            );
    }
    if(obj_player.x < object_self.x) {
        //Hitbox links
        scr_create_bullet(
            object_self.x - sprite_get_width(object_self.sprite_index)/2,
            object_self.y,
            damage,
            object_create,
            bullet_speed * -1
            );
    }
    alarm_set(0, attack_speed);
}
