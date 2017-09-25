/*
scr_read_items(

);
*/

ini_open(working_directory + "SaveData\" + "savedata.ini");
var debug = ini_read_real("debug", "debug_mode", 0);

for(var i = 0; i < items.count-1; i++) {
    if(debug) {
        item_object.items_unlocked[i] = true;
    } else {
        item_object.items_unlocked[i] = ini_read_real("items", string(i), 0);
    }
}

ini_close();
