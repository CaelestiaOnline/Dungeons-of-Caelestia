/*
scr_money_add_player(
    money

);
*/

var money = argument0;

progress.run_money += money;
progress.dealt_run_money += money;
hud.money_scale += money;
