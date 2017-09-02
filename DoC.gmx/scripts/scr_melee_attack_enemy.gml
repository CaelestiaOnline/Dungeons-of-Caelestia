/*
scr_melee_attack_enemy(
    schaden
    Art der Hitbox 
    )
*/
var damage = argument0;
var type = argument1

var attack_axis;
//if(obj_player.x >= self.x) attack_axis = 1;
//if(obj_player.x < self.x) attack_axis = -1;

var hit_x;
if(self.image_xscale == 1) hit_x = self.x + sprite_get_width(self.sprite_index)/2;
if(self.image_xscale == -1) hit_x = self.x - sprite_get_width(self.sprite_index)/2 - sprite_get_width(type.sprite_index);

//Angriff
if(alarm_get(0) == attack_speed/2) {
    //Hitbox
    scr_create_hitbox_enemy(
        hit_x,
        self.y,
        damage,
        false,
        type
    );
                
    //Hitmark
    scr_create_hitmark(
        hit_x,
        self.y,
        false,
        image_xscale,
        self
    );
    attack_ready = false;
    alarm_set(1, attack_speed*2 + random_range(-30, 30));
}
