/*
scr_write_volume(

);
*/


ini_open(working_directory + "SaveData\" + "savedata.ini");

ini_write_real("sfx", "volume", global.volume);

ini_close();
