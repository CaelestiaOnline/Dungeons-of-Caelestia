/*
scr_get_item_prize(

);
*/

var item_index = argument0;
var temp_item_prize = 10;

if(array_length_2d(item, item_index) > 5) {
    temp_item_prize = item[item_index, 5];
} else {

switch(item[item_index, 3]) {
    case "prim":
        temp_item_prize = 20;
        if(item_stats[item_index, item_stats_prim.ability] != "") temp_item_prize += 10;
        break;
    case "sec":
        temp_item_prize = 25;
        break;
    case "mag":
        temp_item_prize = 40 + (item_stats[item_index, item_stats_mag.ability_strength]*10);
        break;
    case "item":
        temp_item_prize = 30 + (item_stats[item_index, item_stats_item.ability_strength]*10);
        break;
    case "pickup":
        temp_item_prize = 15 + (item_stats[item_index, item_stats_pickup.ability_strength]*5);
        break;
}
}

if(item_index == items.no_valid_item) temp_item_prize = 0;

return temp_item_prize;
