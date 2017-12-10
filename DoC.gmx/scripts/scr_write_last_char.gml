/*
scr_write_last_char(

);
*/


ini_open(working_directory + "SaveData\" + "savedata.ini");

ini_write_real("character", "last", int64(player_stats.char_index));

ini_close();
