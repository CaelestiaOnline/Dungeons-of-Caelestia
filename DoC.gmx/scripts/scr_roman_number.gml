/*
scr_roman_numer(
    nummer
    );
*/

var number = argument0;

switch(number) {
    case 1: 
        return "I";
        break;
    case 2: 
        return "II";
        break;
    case 3: 
        return "III";
        break;
    case 4: 
        return "IV";
        break;
    case 5: 
        return "V";
        break;
    case 6: 
        return "VI";
        break;
    case 7: 
        return "VII";
        break;
    case 8: 
        return "VIII";
        break;
    case 9: 
        return "IX";
        break;
    case 10: 
        return "X";
        break;
    case 666:
        return "DCLXVI";
        break;
    default:
        return string(number);
        break;
}
