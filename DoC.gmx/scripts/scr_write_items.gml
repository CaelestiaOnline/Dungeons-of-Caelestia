/*
scr_write_items(

);
*/

ini_open(working_directory + "SaveData\" + "savedata.ini");

for(var i = 0; i < items.count-1; i++) {
    ini_write_real("items", string(i), items_unlocked[i]);
}

ini_close();
