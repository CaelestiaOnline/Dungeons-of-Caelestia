/*
scr_effect_index(
    string
);
*/

var effect_string = argument0;

switch(effect_string) {
    case "speed":
        return effect.speed;
    case "slowness":
        return effect.slowness;
    case "attack_speed":
        return effect.attack_speed;
    case "fire":
        return effect.fire;
    case "regeneration":
        return effect.regeneration;
    case "mana_regeneration":
        return effect.mana_regeneration;
    case "absorption":
        return effect.absorption;
    case "resistance":
        return effect.resistance;
    case "strength":
        return effect.strength;
    case "stun":
        return effect.stun;
    case "poison":
        return effect.poison;
    case "heal":
        return effect.heal;
    case "mana":
        return effect.mana;
}
