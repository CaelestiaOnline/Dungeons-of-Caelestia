/*
scr_leave_run(
    
);
*/

var success = argument0;

admin.in_run = false;

scr_reset_stats();

//Run Money
death_stats.collected_run_money = progress.run_money;
progress.run_money = 0;

//Clear Inv
scr_inventory_clear_all();






