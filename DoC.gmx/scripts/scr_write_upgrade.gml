/*
scr_write_upgrade(
    upgrade,
    status
);
*/

var upgrade_index = argument0;
var status = argument1;

ini_open(working_directory + "SaveData\" + "savedata.ini");

ini_write_real("skilltree", string(upgrade), status);

ini_close();
