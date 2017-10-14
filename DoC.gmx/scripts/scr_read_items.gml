/*
scr_read_items(

);
*/

/*
for(var i = 0; i < items.count; i++) {
    global.items_unlocked[i] = false;
    global.items_found[i] = false;
}
*/

ini_open(working_directory + "SaveData\" + "savedata.ini");
var debug = ini_read_real("debug", "debug_mode", 0);

for(var i = 0; i < items.count; i++) {
    if(debug) {
        global.items_unlocked[i] = true;
        global.items_found[i] = true;
    } else {
        var status = int64(ini_read_real("items_unlocked", string(i), 0));
        global.items_unlocked[i] = status;
        var status = int64(ini_read_real("items_found", string(i), 0));
        global.items_found[i] = status;
    }
}

ini_close();
