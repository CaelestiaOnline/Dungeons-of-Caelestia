/*
scr_write_items(

);
*/


ini_open(working_directory + "SaveData\" + "savedata.ini");

if(!ini_read_real("debug", "debug_mode", 0)) {

for(var i = 0; i < items.count; i++) {
    ini_write_real("items", string(i), global.items_unlocked[i]);
}

}

ini_close();
