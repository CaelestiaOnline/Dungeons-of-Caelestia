/*
scr_volume_add(
    volume
);
*/

var volume_add = argument0;

global.volume += volume_add;

global.volume = clamp(global.volume, 0, 1);

audio_master_gain(global.volume);

scr_write_volume();


