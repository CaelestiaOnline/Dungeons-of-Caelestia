/*
scr_leave_run(
    
);
*/

var success = argument0;

admin.in_run = false;

//Run Money
death_stats.collected_run_money = progress.run_money;
progress.run_money = 0;

death_stats.collected_xp = progress.xp;
progress.xp = 0;

//Clear Inv
scr_inventory_clear_all();

//Run Admin
if(instance_exists(obj_run_admin)) instance_destroy(obj_run_admin);
run_admin = noone;

