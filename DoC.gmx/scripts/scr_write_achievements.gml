/*
scr_write_achievements(

);
*/


ini_open(working_directory + "SaveData\" + "savedata.ini");

for(var i = 0; i < achievement.count; i++) {
    ini_write_real("achievements", string(i), global.achievements_unlocked[i]);
}

ini_close();
