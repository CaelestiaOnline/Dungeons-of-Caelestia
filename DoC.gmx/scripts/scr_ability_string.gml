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
    case "ability_revive":
        return "Wiederbelebung";
        break;
    case "ability_mana_teleport":
        return "Mana-Teleport";
        break;
    case "ability_mana_invisibility":
        return "Unsichtbarkeit";
        break;
    case "attack_mana":
        return "Mana-Attack";
        break;
    case "attack_mana_fire":
        return "Mana-Fire-Attack";
        break;
    case "attack_mana_beam":
        return "Mana-Strahl";
        break;
    case "attack_mana_chainbolt":
        return "Kugelblitz";
        break;
    case "attack_mana_black_fire":
        return "Schwarzes Feuer";
        break;
    default:
        return "-/-";
        break;
}
