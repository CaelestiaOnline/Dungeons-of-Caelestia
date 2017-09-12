/*
scr_enemy_effect(
    Schaden,
    Effekt,
    Effektstufe
    )
*/

var damage = argument0;
var effc = argument1;
var stage = argument2;

var object = collision_ellipse(
    self.x - self.max_x,
    self.y - self.max_y, 
    self.x + self.max_x, 
    self.y + self.max_y, 
    obj_player, 
    false, 
    false);
    
if(object != noone){
    scr_deal_player_damage(damage);
    scr_effect(effc, stage, obj_player);
}
