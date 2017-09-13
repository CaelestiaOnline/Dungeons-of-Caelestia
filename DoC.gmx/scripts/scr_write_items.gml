/*
scr_write_items(

);
*/

ini_open("savedata.ini");

for(var i = 0; i < items.count; i++) {
    ini_write_real("items", string(i), items_unlocked[i]);
}

ini_close();
