/*
scr_init_ability(
    ability
    ability_strength
);
Setzt die notwendigen Variablen für den Effekt bzw. die Effektstärke
*/

var ability = argument0;
if(ability == "") exit; 
var ability_strength = argument1;
if(ability_strength == 0) exit;

switch(ability) {
    //Effekte
    //Speed-Boost
    case "speed":
        effect_time = room_speed * 10;
        switch(ability_strength) {
            case 1:
                speed_mult = +0.2;
                break;
            case 2:
                speed_mult = +1.0;
                break;
            case 10:
                speed_mult = +10.0;
                break;
        } 
        break;
    //Slowness
    case "slowness":
        effect_time = room_speed * 10;
        switch(ability_strength) {
            case 1:
                speed_mult = -0.2;
                break;
            case 2:
                speed_mult = -0.5;
            case 10:
                speed_mult = -1.0;
                break;
        
        }
    //Attack Speed
    case "attack_speed":
        effect_time = room_speed * 10;
        switch(ability_strength) {
            case 1:
                attack_speed_mult = -0.2;
                break;
            case 2:
                attack_speed_mult = -0.5;
                break;
            case -1:
                attack_speed_mult = +0.2;
                break;
            case -2:
                attack_speed_mult = +0.5;
                break;
        }
    //Feuer
    case "fire":
        switch(ability_strength) {
            case 1:
                fire_damage = 1;
                effect_time = room_speed * 3;
                fire_speed = room_speed / 3;
                break;
            case 2:
                fire_damage = 2;
                effect_time = room_speed * 5;
                fire_speed = room_speed / 3;
                break;
        }
    //Regeneration
    case "regeneration":
        switch(ability_strength) {
            case 1:
                reg_heal = 2;
                effect_time = room_speed * 4;
                reg_speed = room_speed / 4;
                break;
            case 2:
                reg_heal = 2;
                effect_time = room_speed * 5;
                reg_speed = room_speed / 6;
                break;
        }
    //Mana Regeneration
    case "mana_regeneration":
        switch(ability_strength) {
            case 1:
                mana_reg_mana = 2;
                effect_time = room_speed * 4;
                mana_reg_speed = room_speed / 4;
                break;
            case 2:
                mana_reg_mana = 2;
                effect_time = room_speed * 5;
                mana_reg_speed = room_speed / 6;
        }
    //Absorption
    case "absorption":
        switch(ability_strength) {
            case 1:
                absorption_hp = round(player_stats.max_hp/8);
                effect_time = room_speed * 20;
                break;
            case 2:
                absorption_hp = round(player_stats.max_hp/4);
                effect_time = room_speed * 20;
                break;
        }
    //Reistance
    case "resistance":
        effect_time = room_speed * 10;
        switch(ability_strength) {
            case 1:
                resistance_mult = -0.15;
                break;
            case 2:
                resistance_mult = -0.3;
                break;
        }
    //Strength
    case "strength":
        effect_time = room_speed * 10;
        switch(ability_strength) {
            case 1:
                strength_mult = +0.2;
                break;
            case 2:
                strength_mult = +0.4;
                break;
        }
    //Stun?
    case "stun":
        effect_time = room_speed;
        //switch(ability_strength) {}
    //Poison
    case "poison":
        switch(ability_strength) {
            case 1:
                poison_damage = 1;
                effect_time = room_speed * 10;
                poison_speed = room_speed;
            case 2:
                poison_damage = 2;
                effect_time = room_speed * 10;
                poison_speed = room_speed;
        }
    //Insta-Heilung
    case "heal":
        switch(ability_strength) {
            case 1:
                heal = round(player_stats.max_hp/8);
                break;
            case 2:
                heal = round(player_stats.max_hp/4);
                break;
        }
        break;
    //Insta-Mana
    case "mana":
        switch(ability_strength) {
            case 1:
                mana = round(player_stats.max_mana/8);
                break;
            case 2:
                mana = round(player_stats.max_mana/4);
                break;
        }
        break;
    //Magie
    //Attacken
    //Mana
    case "attack_mana":
        switch(ability_strength) {
            case 1:
                damage = round(player_stats.root_damage*3);
                break;
        }
        break;
    default:
        show_debug_message("Ability oder Stufe nicht vorhanden:");
        show_debug_message("Ability: " + string(ability));
        show_debug_message("Stufe: " + string(ability_strength));
        break;
}


