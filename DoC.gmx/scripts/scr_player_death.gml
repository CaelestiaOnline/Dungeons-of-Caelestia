/*
scr_player_death(

);
*/

admin.playing = false;

scr_draw_death_player(x, y, spr_charakter_dead);

if(!instance_exists(obj_player_death)) {
    var player_death_object = instance_create(0, 0, obj_player_death);
}


