/*
scr_write_progress(

);
*/

ini_open(working_directory + "SaveData\" + "savedata.ini");

//Hub Money
ini_write_real("progress", "hub_money", progress.hub_money);

//Level
ini_write_real("progress", "level", progress.level);

//Level
ini_write_real("progress", "skillpoints", progress.skillpoints);

ini_close();
