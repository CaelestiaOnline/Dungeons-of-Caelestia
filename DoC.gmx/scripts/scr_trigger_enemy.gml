/*
scr_trigger_enemy(
    radius
*/

var radius = argument0;
if(radius == -1) radius = 500;

if(triggered && !collision_circle(x, y, 1200, obj_player, false, true)) {
    scr_reset_enemy();
}

if(instance_exists(obj_player_death)) move = 0;

if(player_stats.invisible) {
    triggered = false;
    radius = 25;
}

if(!triggered) {

if(collision_circle(x, y, radius, obj_player, false, true) || attacked) {
       triggered = true;
       scr_draw_trigger_enemy(self);
       attacked = false;
}

}


