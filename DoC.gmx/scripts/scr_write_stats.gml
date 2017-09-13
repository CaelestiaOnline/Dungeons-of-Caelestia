/*
scr_write_stats(

);
*/

ini_open("savedata.ini");

ini_write_real("stats", "death_count", stats.death_count);
ini_write_real("stats", "runs_done", stats.runs_done);

ini_write_real("stats", "pxl_travelled", stats.pxl_travelled);
ini_write_real("stats", "pxl_walked", stats.pxl_walked);
ini_write_real("stats", "pxl_sprinted", stats.pxl_sprinted);
ini_write_real("stats", "pxl_crouched", stats.pxl_crouched);

ini_write_real("stats", "damage_done", stats.damage_done);
ini_write_real("stats", "attacks_done", stats.attacks_done);

ini_close();
