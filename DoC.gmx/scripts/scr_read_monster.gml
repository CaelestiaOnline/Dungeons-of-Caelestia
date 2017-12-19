/*
scr_read_monster(

);
*/

ini_open(working_directory + "SaveData\" + "savedata.ini");

for(var i = 0; i < array_length_1d(enemy_objects); i++) {
    var status = int64(ini_read_real("monster", string(enemy_objects[i]), 0));
    global.monster_unlocked[enemy_objects[i]] = status;
}

ini_close();
