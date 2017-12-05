/*
scr_write_chars(

);
*/


ini_open(working_directory + "SaveData\" + "savedata.ini");

if(!ini_read_real("debug", "debug_mode", 0)) {

for(var i = 0; i < char.count; i++) {
    ini_write_real("character", string(i), global.char_status[i]);
}

}

ini_close();
