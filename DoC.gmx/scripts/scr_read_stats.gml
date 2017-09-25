/*
scr_read_stats(

);
*/

ini_open(working_directory + "SaveData\" + "savedata.ini");

savestats.death_count = ini_read_real("stats", "death_count", 0);
savestats.runs_done = ini_read_real("stats", "runs_done", 0);

savestats.pxl_travelled = ini_read_real("stats", "pxl_travelled", 0);
savestats.pxl_walked = ini_read_real("stats", "pxl_walked", 0);
savestats.pxl_sprinted = ini_read_real("stats", "pxl_sprinted", 0);
savestats.pxl_crouched = ini_read_real("stats", "pxl_crouched", 0);

savestats.damage_done = ini_read_real("stats", "dammage_done", 0);
savestats.attacks_done = ini_read_real("stats", "attacks_done", 0);
savestats.prim_attacks_done = ini_read_real("stats", "prim_attacks_done", 0);
savestats.melee_attacks_done = ini_read_real("stats", "melee_attacks_done", 0);
savestats.bullet_attacks_done = ini_read_real("stats", "bullet_attacks_done", 0);
savestats.sec_attacks_done = ini_read_real("stats", "sec_attacks_done", 0);
savestats.mag_attacks_done = ini_read_real("stats", "mag_attacks_done", 0);

savestats.hp_healed = ini_read_real("stats", "hp_healed", 0);
savestats.damage_taken = ini_read_real("stats", "damage_taken", 0);

ini_close();
