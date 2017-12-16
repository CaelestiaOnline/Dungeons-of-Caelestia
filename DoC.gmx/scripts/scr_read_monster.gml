/*
scr_read_monster(

);
*/

ini_open(working_directory + "SaveData\" + "savedata.ini");

for(var i = 0; i < array_length_1d(enemy_array); i++) {
    var status = int64(ini_read_real("monster", string(enemy_array[i]), 0));
    global.achievements_unlocked[enemy_array[i]] = status;
}

ini_close();
