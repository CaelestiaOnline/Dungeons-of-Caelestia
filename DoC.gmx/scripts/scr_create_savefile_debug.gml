/*
scr_create_savefile_debug(
);
*/

ini_open(working_directory + "SaveData\" + "savedata.ini");

ini_write_real("debug", "create_file", ini_read_real("debug", "create_file", 0)+1);

ini_close();
