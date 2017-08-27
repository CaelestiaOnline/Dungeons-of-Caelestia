/*
scr_effect(
    effect_index,
    stufe,
    goal_object
);
*/

var effect_index = argument0;
var effect_strength = argument1;
var goal_object = argument2;

scr_init_ability(effects_name[effect_index], effect_strength);

switch(effect_index) {
    case effect.speed:
        scr_effect_slow_speed(1 + speed_mult, effect_time, goal_object);
        break;
    case effect.slowness:
        scr_effect_slow_speed(1 + speed_mult, effect_time, goal_object);
        break;
    case effect.attack_speed:
        scr_effect_attack_speed(1 + attack_speed_mult, effect_time, goal_object);
        break;
    case effect.fire:
        scr_effect_fire(fire_damage, effect_time, fire_speed, goal_object);
        break;
    case effect.regeneration:
        scr_effect_regeneration(reg_heal, effect_time, reg_speed, goal_object);
        break;
    case effect.mana_regeneration:
        scr_effect_mana_regeneration(mana_reg_mana, effect_time, mana_reg_speed, goal_object);
        break;
    case effect.absorption:
        scr_effect_absorption(absorption_hp, effect_time, goal_object);
        break;
    case effect.resistance:
        scr_effect_resistance(1 + resistance_mult, effect_time, goal_object);
        break;
    case effect.strength:
        scr_effect_strength(1 + strength_mult, effect_time, goal_object);
        break;
    case effect.stun:
        scr_effect_stun(effect_time);
        break;
    case effect.poison:
        scr_effect_poison(poison_damage, effect_time, poison_speed, goal_object);
        break;
}
