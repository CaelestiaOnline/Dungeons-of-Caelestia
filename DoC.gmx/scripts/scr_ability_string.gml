/*
scr_ability_string(
    ability
);
*/

var ability_string = argument0;

switch(ability_string) {
    case "heal":
        return "Insta-Heal";
        break;
    case "mana":
        return "Insta-Mana";
        break;
    case "speed":
        return "Speed-Boost";
        break;
    case "attack_mana":
        return "Mana-Attack";
        break;
    default:
        return "-/-";
        break;
}
