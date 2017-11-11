/*
scr_read_skilltree(

);
*/


ini_open(working_directory + "SaveData\" + "savedata.ini");

global.volume = ini_read_real("sfx", "volume", 100);

ini_close();
