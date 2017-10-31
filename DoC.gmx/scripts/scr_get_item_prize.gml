/*
scr_get_item_prize(

);
*/

var item_index = argument0;
var temp_item_prize = 10;

switch(item[item_index, 3]) {
    case "prim":
        switch(item[item_index, 5]) {
            case "normal":
                temp_item_prize = 5;
                break;
            case "rare":
                temp_item_prize = 8;
                break;
            case "magic":
                temp_item_prize = 12;
                break;
            case "epic":
                temp_item_prize = 16;
                break;
            case "legendary":
                temp_item_prize = 20;
                break;
        }
        break;
    case "sec":
        switch(item[item_index, 5]) {
            case "normal":
                temp_item_prize = 8;
                break;
            case "rare":
                temp_item_prize = 12;
                break;
            case "magic":
                temp_item_prize = 14;
                break;
            case "epic":
                temp_item_prize = 16;
                break;
            case "legendary":
                temp_item_prize = 20;
                break;
        }
        break;
    case "mag":
        switch(item[item_index, 5]) {
            case "normal":
                temp_item_prize = 8;
                break;
            case "rare":
                temp_item_prize = 10;
                break;
            case "magic":
                temp_item_prize = 14;
                break;
            case "epic":
                temp_item_prize = 18;
                break;
            case "legendary":
                temp_item_prize = 22;
                break;
        }
        break;
    case "item":
        switch(item[item_index, 5]) {
            case "normal":
                temp_item_prize = 8;
                break;
            case "rare":
                temp_item_prize = 12;
                break;
            case "magic":
                temp_item_prize = 16;
                break;
            case "epic":
                temp_item_prize = 18;
                break;
            case "legendary":
                temp_item_prize = 20;
                break;
        }
        break;
    case "pickup":
        switch(item[item_index, 5]) {
            case "normal":
                temp_item_prize = 4;
                break;
            case "rare":
                temp_item_prize = 6;
                break;
            case "magic":
                temp_item_prize = 8;
                break;
            case "epic":
                temp_item_prize = 10;
                break;
            case "legendary":
                temp_item_prize = 12;
                break;
        }
        break;
}

return temp_item_prize;
