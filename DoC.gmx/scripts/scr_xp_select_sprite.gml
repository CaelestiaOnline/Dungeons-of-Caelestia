/*
scr_xp_select_sprite
    xp

);
*/

var xp = argument0;

switch(xp) {
    case 1:
        return spr_xp_1;
        break;
    case 5:
        return spr_xp_5;
        break;
    case 10:
        return spr_xp_10;
        break;
    case 20:
        return spr_xp_20;
        break;
    case 50:
        return spr_xp_50;
        break;
    case 100:
        return spr_xp_100;
        break;
    case 500:
        return spr_xp_500;
        break;
    case 1000:
        return spr_xp_1000;
        break;
    default:
        return spr_undefined;
        break;
}
