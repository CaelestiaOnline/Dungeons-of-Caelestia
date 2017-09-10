/*
scr_ability_string(
    ability
);
*/

var ability_string = argument0;

switch(ability_string) {
    case "speed":
        return "Speed-Boost";
        break;
    case "slowness":
        return "Slowness"
        break;
    case "attack_speed":
        return "Attack-Speed-Boost"
        break;
    case "fire":
        return "Fire";
        break;
    case "regeneration":
        return "Regeneration";
        break;
    case "mana_regeneration":
        return "Mana-Regeneration";
        break;
    case "absorption":
        return "Absorption";
        break;
    case "resistance":
        return "Resistance";
        break;
    case "strength":
        return "Strength";
        break;
    case "stun":
        return "Stun";
        break;
    case "poison":
        return "Poison";
        break;
    case "heal":
        return "Insta-Heal";
        break;
    case "mana":
        return "Insta-Mana";
        break;
    case "blood":
        return "Blutung";
        break;
    case "attack_mana":
        return "Mana-Attack";
        break;
    case "attack_mana_fire":
        return "Mana-Fire-Attack";
        break;
    case "ability_mana_teleport":
        return "Mana-Teleport";
        break;
    default:
        return "-/-";
        break;
}
