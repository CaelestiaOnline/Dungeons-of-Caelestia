/*
scr_bullet_attack_enemy(
    schaden,
    zu erzeugendes Objekt
    )
*/
var damage = argument0;
var type = argument1;

var attack_axis;
//if(obj_player.x >= self.x) attack_axis = 1;
//if(obj_player.x < self.x) attack_axis = -1;

var hit_x;
if(self.image_xscale == 1) hit_x = self.x + sprite_get_width(self.sprite_index)/2;
if(self.image_xscale == -1) hit_x = self.x - sprite_get_width(self.sprite_index)/2;

//Angriff
if(alarm_get(0) == attack_speed/2) {
    //Erzeuge Bullet
    scr_create_bullet(
        hit_x,
        self.y,
        damage,
        type,
        image_xscale,
        false
        );
        attack_ready = false;
        alarm_set(1, attack_speed*6 + random_range(-30, 30));
}
