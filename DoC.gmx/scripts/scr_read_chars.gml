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

for(var i = 0; i < char.count; i++) {
    if(debug) {
        global.char_status[i] = 1;
    } else {
        var status = int64(ini_read_real("character", string(i), 0));
        global.char_status[i] = status;
    }
}

var last_char = ini_read_string("character", "last", "");

ini_close();

return last_char;
