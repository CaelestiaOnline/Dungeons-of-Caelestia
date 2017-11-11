/*
scr_volume_add(
    volume
);
*/

var volume_add = argument0;

global.volume += volume_add;

global.volume = clamp(global.volume, 100, 200);

scr_set_global_volume();

scr_write_volume();


