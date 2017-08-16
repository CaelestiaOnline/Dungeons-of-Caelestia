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
    //Speed-Boost
    case "speed":
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


