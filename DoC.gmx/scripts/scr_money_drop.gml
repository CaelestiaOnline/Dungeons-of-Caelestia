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
        var current_money = choose(1, 5, 10, 20, 50, 100, 500, 1000);
        if((money - current_money) < 0) continue; 
        else {
            money -= current_money;
        }
        var drop_x_inacc = random_range(-range,range);
        var drop_y_inacc = random_range(-range,range);

        if(instance_place(drop_x + drop_x_inacc, drop_y + drop_y_inacc, obj_hindernis)) continue;
        
        var coin = instance_create(drop_x + drop_x_inacc, drop_y + drop_y_inacc, obj_coin);
        coin.money = current_money;
        coin.sprite_index = scr_money_select_sprite(current_money);
    }

}
