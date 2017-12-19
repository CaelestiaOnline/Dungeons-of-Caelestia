/*
scr_write_monster(

);
*/


ini_open(working_directory + "SaveData\" + "savedata.ini");

for(var i = 0; i < array_length_1d(enemy_objects); i++) {
    ini_write_real("monster", string(enemy_objects[i]), global.monster_unlocked[i]);
}

ini_close();
