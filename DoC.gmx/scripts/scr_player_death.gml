/*
scr_player_death(

);
*/
obj_player.visible = false;
scr_keylock_all(true);
admin.playing = false;
player_stats.invincible = true;

scr_draw_death_player(x, y, spr_charakter_dead);

if(!instance_exists(obj_player_death)) {
    var player_death_object = instance_create(0, 0, obj_player_death);
}


