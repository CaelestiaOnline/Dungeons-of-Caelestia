/*
scr_write_item(
    item,
    status
);
*/

var item_index = argument0;
var status = argument1;

ini_open(working_directory + "SaveData\" + "savedata.ini");

ini_write_real("items", string(item_index), status);

ini_close();
