/*
scr_write_chars(

);
*/


ini_open(working_directory + "SaveData\" + "savedata.ini");

for(var i = 0; i < char.count; i++) {
    ini_write_real("character", string(i), global.char_unlocked[i]);
}

ini_close();
