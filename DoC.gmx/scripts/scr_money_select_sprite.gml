/*
scr_money_select_sprite
    money

);
*/

var money = argument0;

switch(money) {
    case 1:
        return spr_money_1;
        break;
    case 5:
        return spr_money_5;
        break;
    case 10:
        return spr_money_10;
        break;
    case 20:
        return spr_money_20;
        break;
    case 50:
        return spr_money_50;
        break;
    case 100:
        return spr_money_100;
        break;
    case 500:
        return spr_money_500;
        break;
    case 1000:
        return spr_money_1000;
        break;
    default:
        return spr_undefined;
        break;
}
