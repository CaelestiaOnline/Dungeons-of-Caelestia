/*
scr_effect_kill_all(

);
*/

for(var i = 0; i < instance_number(obj_effect); i++) {
    instance_destroy(instance_find(obj_effect, i), true);
}
