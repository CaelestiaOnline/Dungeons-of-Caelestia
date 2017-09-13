/*
scr_write_progress(

);
*/

ini_open("savedata.ini");

//Hub Money
ini_write_real("progress", "hub_money", progess.hub_money);

//Level
ini_write_real("progress", "level", progess.level);

//XP
ini_write_real("progress", "xp", progess.xp);

ini_close();
