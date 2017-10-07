/*
scr_write_upgrades(

);
*/


ini_open(working_directory + "SaveData\" + "savedata.ini");

if(!ini_read_real("debug", "debug_mode", 0)) {

for(var i = 0; i < skilltree.count; i++) {
    ini_write_real("skilltree", string(i), global.skilltree_status[i]);
}

}

ini_close();
