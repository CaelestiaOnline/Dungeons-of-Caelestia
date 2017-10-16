/*
scr_upgrade_add_stats(
    upgrade_index,
    added_stage
);
*/

var upgrade_index = argument0;
var stage = argument1;

switch(upgrade_index) {
    case skilltree.max_hp:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.hp += upgraded_stat;
        player_stats.max_hp += upgraded_stat;
        player_stats.old_max_hp += upgraded_stat;
        break;
    case skilltree.regeneration:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.regeneration += upgraded_stat;
        player_stats.old_regeneration += upgraded_stat;
        break;
    case skilltree.reg_time:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.reg_time += upgraded_stat;
        player_stats.old_reg_time += upgraded_stat;
        break;
    case skilltree.max_mana:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.mana += upgraded_stat;
        player_stats.max_mana += upgraded_stat;
        player_stats.old_max_mana += upgraded_stat;
        break;
    case skilltree.mana_reg:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.mana_reg += upgraded_stat;
        player_stats.old_mana_reg += upgraded_stat;
        break;
    case skilltree.mana_reg_time:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.mana_reg_time += upgraded_stat;
        player_stats.old_mana_reg_time += upgraded_stat;
        break;
    case skilltree.max_stamina:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.stamina += upgraded_stat;
        player_stats.max_stamina += upgraded_stat;
        player_stats.old_max_stamina += upgraded_stat;
        break;
    case skilltree.stamina_reg:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.stamina_reg += upgraded_stat;
        player_stats.old_stamina_reg += upgraded_stat;
        break;
    case skilltree.stamina_usage:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.stamina_usage += upgraded_stat;
        player_stats.old_stamina_usage += upgraded_stat;
        break;
    case skilltree.root_damage:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.root_damage += upgraded_stat;
        player_stats.old_root_damage += upgraded_stat;
        break;
    case skilltree.attack_speed:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.attack_speed += upgraded_stat;
        player_stats.old_attack_speed += upgraded_stat;
        break;
    case skilltree.chance_crit:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.chance_crit += upgraded_stat;
        player_stats.old_chance_crit += upgraded_stat;
        break;
    case skilltree.max_player_speed:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.max_player_speed += upgraded_stat;
        player_stats.old_max_player_speed += upgraded_stat;
        
        player_stats.max_player_sprint_speed = player_stats.max_player_speed * 1.8;
        player_stats.old_max_player_sprint_speed = player_stats.max_player_sprint_speed;
        break;
    case skilltree.chest_chance:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.chest_chance += upgraded_stat;
        player_stats.old_chest_chance += upgraded_stat;
        break;
    case skilltree.heal_orb_chance:
        var upgraded_stat = skilltree_stats[upgrade_index, 10 + stage];
        player_stats.heal_orb_chance += upgraded_stat;
        player_stats.old_heal_orb_chance += upgraded_stat;
        break;
};
