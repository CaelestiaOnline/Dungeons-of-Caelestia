/*
scr_read_achievements(

);
*/

ini_open(working_directory + "SaveData\" + "savedata.ini");

for(var i = 0; i < achievement.count; i++) {
    var status = int64(ini_read_real("achievements", string(i), 0));
    global.achievements_unlocked[i] = status;
}

ini_close();
