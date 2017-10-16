/*
scr_read_skilltree(

);
*/

/*
for(var i = 0; i < items.count; i++) {
    global.items_unlocked[i] = false;
    global.items_found[i] = false;
}
*/

ini_open(working_directory + "SaveData\" + "savedata.ini");
var debug = false;//ini_read_real("debug", "debug_mode", 0);

for(var i = 0; i < skilltree.count; i++) {
    if(debug) {
        global.skilltree_status[i] = skilltree_stats[i, 3];
    } else {
        var status = int64(ini_read_real("skilltree", string(i), 0));
        global.skilltree_status[i] = status;
    }
}

ini_close();
