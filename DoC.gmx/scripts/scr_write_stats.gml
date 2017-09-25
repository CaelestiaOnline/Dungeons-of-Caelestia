/*
scr_write_stats(

);
*/

ini_open(working_directory + "SaveData\" + "savedata.ini");

var old_stats = ini_read_real("stats", "death_count", 0);
ini_write_real("stats", "death_count", stats.death_count + old_stats);
var old_stats = ini_read_real("stats", "runs_done", 0);
ini_write_real("stats", "runs_done", stats.runs_done + old_stats);

var old_stats = ini_read_real("stats", "pxl_travelled", 0);
ini_write_real("stats", "pxl_travelled", stats.pxl_travelled + old_stats);
var old_stats = ini_read_real("stats", "pxl_walked", 0);
ini_write_real("stats", "pxl_walked", stats.pxl_walked + old_stats);
var old_stats = ini_read_real("stats", "pxl_sprinted", 0);
ini_write_real("stats", "pxl_sprinted", stats.pxl_sprinted + old_stats);
var old_stats = ini_read_real("stats", "pxl_crouched", 0);
ini_write_real("stats", "pxl_crouched", stats.pxl_crouched + old_stats);

var old_stats = ini_read_real("stats", "dammage_done", 0);
ini_write_real("stats", "damage_done", stats.damage_done + old_stats);
var old_stats = ini_read_real("stats", "attacks_done", 0);
ini_write_real("stats", "attacks_done", stats.attacks_done + old_stats);
var old_stats = ini_read_real("stats", "prim_attacks_done", 0);
ini_write_real("stats", "prim_attacks_done", stats.prim_attacks_done + old_stats);
var old_stats = ini_read_real("stats", "melee_attacks_done", 0);
ini_write_real("stats", "melee_attacks_done", stats.melee_attacks_done + old_stats);
var old_stats = ini_read_real("stats", "bullet_attacks_done", 0);
ini_write_real("stats", "bullet_attacks_done", stats.bullet_attacks_done + old_stats);
var old_stats = ini_read_real("stats", "sec_attacks_done", 0);
ini_write_real("stats", "sec_attacks_done", stats.sec_attacks_done + old_stats);
var old_stats = ini_read_real("stats", "mag_attacks_done", 0);
ini_write_real("stats", "mag_attacks_done", stats.mag_attacks_done + old_stats);

var old_stats = ini_read_real("stats", "hp_healed", 0);
ini_write_real("stats", "hp_healed", stats.hp_healed + old_stats);
var old_stats = ini_read_real("stats", "damage_taken", 0);
ini_write_real("stats", "damage_taken", stats.damage_taken + old_stats);

ini_close();
