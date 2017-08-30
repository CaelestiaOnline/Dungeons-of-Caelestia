/*
scr_reset_enemy(

);
*/

triggered = false;

if(movable) {
path_end();
path_delete(path);
event_perform(ev_create, 0);
}

