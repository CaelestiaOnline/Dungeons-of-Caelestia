/*
scr_write_item_found(
    item,
    status
);
*/

var item_index = argument0;
var status = argument1;

ini_open(working_directory + "SaveData\" + "savedata.ini");

ini_write_real("items_found", string(item_index), ini_read_real("items_found", string(item_index), 0) + status);

ini_close();
