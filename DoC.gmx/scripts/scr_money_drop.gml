/*
scr_money_drop(,
    x,
    y,
    money
);
*/

var drop_x = argument0;
var drop_y = argument1;
var money = argument2;

var range = 32;

if(money <= 0) exit;
else {
    while(money > 0) {
        show_debug_message("GELD: " + string(money));
        var current_money = choose(1, 5, 10, 20, 50, 100, 500, 1000);
        if((money - current_money) < 0) continue; 
        else {
            money -= current_money;
        }
        var coin = instance_create(drop_x + random_range(-range,range), drop_y + random_range(-range,range), obj_coin);
        coin.money = current_money;
        coin.sprite_index = scr_money_select_sprite(current_money);
    }

}
