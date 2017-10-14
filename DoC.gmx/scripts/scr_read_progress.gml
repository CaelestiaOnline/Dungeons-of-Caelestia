/*
scr_read_progress(

);
*/

ini_open(working_directory + "SaveData\" + "savedata.ini");

//Hub Money
progress.hub_money = ini_read_real("progress", "hub_money", 0);

//Level
progress.level = ini_read_real("progress", "level", 0);

//Level
progress.skillpoints = ini_read_real("progress", "skillpoints", 0);

ini_close();
