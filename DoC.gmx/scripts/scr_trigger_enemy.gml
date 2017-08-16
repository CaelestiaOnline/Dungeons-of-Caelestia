/*
scr_trigger_enemy(
    radius
*/

if(triggered && !collision_circle(x, y, 1200, obj_player, false, true)) {
    scr_reset_enemy();
}

if(triggered) exit;

var radius = argument0;

if(radius == -1) radius = 300;

if(collision_circle(x, y, radius, obj_player, false, true) || dealt_damage > 0) {
       triggered = true;
       scr_draw_trigger_enemy(self);
}
