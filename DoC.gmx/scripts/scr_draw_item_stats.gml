/*
scr_draw_item_stats(
    Item,
);
*/

var stats_item = argument0;

if(stats_item == -1) exit;

for(var i = 0; i < array_length_1d( inv_hud.item_stats_heading_array); i++) {
     inv_hud.item_stats_heading_array[i] = 0;
}

for(var i = 0; i < array_length_1d( inv_hud.item_stats_array); i++) {
     inv_hud.item_stats_array[i] = 0;
}

switch (item[stats_item, 3]) {
    //prim
    case "prim":
        inv_hud.item_stats_heading_array[0] = "Damage: ";
        inv_hud.item_stats_array[0] = string(item_stats[stats_item, item_stats_prim.damage]);
        inv_hud.item_stats_heading_array[1] = "Critical Damage: ";
        inv_hud.item_stats_array[1] = string(item_stats[stats_item, item_stats_prim.damage_crit]);
        inv_hud.item_stats_heading_array[2] = "Ability: ";
        inv_hud.item_stats_array[2] = string(item_stats[stats_item, item_stats_prim.ability]);
        inv_hud.item_stats_heading_array[3] = "Ability chance: ";
        inv_hud.item_stats_array[3] = string(item_stats[stats_item, item_stats_prim.ability_chance]*100) + "%";
        inv_hud.item_stats_heading_array[4] = "Ability strength: ";
        inv_hud.item_stats_array[4] = scr_roman_number(item_stats[stats_item, item_stats_prim.ability_strength]);
        inv_hud.item_stats_heading_array[5] = "Speed bonus: ";
        inv_hud.item_stats_array[5] = string((item_stats[stats_item, item_stats_prim.speed_bonus]-1)*100) + "%";
        inv_hud.item_stats_heading_array[6] = "Misc: ";
        inv_hud.item_stats_array[6] = string(item_stats[stats_item, item_stats_prim.misc]);
        break;
    
    //sec
    case "sec":
        inv_hud.item_stats_heading_array[0] = "Damage: ";
        inv_hud.item_stats_array[0] = string(item_stats[stats_item, item_stats_sec.damage]);
        inv_hud.item_stats_heading_array[1] = "Critical Damage: ";
        inv_hud.item_stats_array[1] = string(item_stats[stats_item, item_stats_sec.damage_crit]);
        inv_hud.item_stats_heading_array[2] = "Ability: ";
        inv_hud.item_stats_array[2] = string(item_stats[stats_item, item_stats_sec.ability]);
        inv_hud.item_stats_heading_array[3] = "Cooldown: "
        inv_hud.item_stats_array[3] = string((item_stats[stats_item, item_stats_sec.cooldown])/room_speed) + "s";
        inv_hud.item_stats_heading_array[4] = "Misc: ";
        inv_hud.item_stats_array[4] = string(item_stats[stats_item, item_stats_sec.misc]);
        break;
    
    //mag
    case "mag":
        inv_hud.item_stats_heading_array[0] = "Ability: ";
        inv_hud.item_stats_array[0] = string(item_stats[stats_item, item_stats_mag.ability]);
        inv_hud.item_stats_heading_array[1] = "Ability strength: ";
        inv_hud.item_stats_array[1] = scr_roman_number(item_stats[stats_item, item_stats_mag.ability_strength]);
        inv_hud.item_stats_heading_array[2] = "Mana usage: "
        inv_hud.item_stats_array[2] = string(item_stats[stats_item, item_stats_mag.mana_usage]);
        inv_hud.item_stats_heading_array[3] = "Misc: ";
        inv_hud.item_stats_array[3] = string(item_stats[stats_item, item_stats_mag.misc]);
        break;
        
    //item
    case "item":
        inv_hud.item_stats_heading_array[0] = "Ability: ";
        inv_hud.item_stats_array[0] = string(item_stats[stats_item, item_stats_item.ability]);
        inv_hud.item_stats_heading_array[1] = "Ability strength: ";
        inv_hud.item_stats_array[1] = string(item_stats[stats_item, item_stats_item.ability_strength]);
        inv_hud.item_stats_heading_array[2] = "Misc: ";
        inv_hud.item_stats_array[2] = string(item_stats[stats_item, item_stats_item.misc]);
        break;
        
    //pickup
    case "pickup":
        inv_hud.item_stats_heading_array[0] = "Ability: ";
        inv_hud.item_stats_array[0] = string(item_stats[stats_item, item_stats_pickup.ability]);
        inv_hud.item_stats_heading_array[1] = "Ability strength: ";
        inv_hud.item_stats_array[1] = string(item_stats[stats_item, item_stats_pickup.ability_strength]);
        inv_hud.item_stats_heading_array[2] = "Misc: ";
        inv_hud.item_stats_array[2] = string(item_stats[stats_item, item_stats_pickup.misc]);
        break;  
}


