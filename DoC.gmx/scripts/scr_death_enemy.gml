/*
scr_death_enemy(
);
*/

effect_create_below(ef_explosion, x, y, 1, c_red);

//Draw dealt damage
scr_draw_dealt_damage(x, y - sprite_get_height(sprite_index)/2 - 30, dealt_damage);

///Draw Death
scr_draw_death_enemy(x, y, sprite_death);

//Loot
scr_xp_drop(x, y, drop_xp);
scr_money_drop(x, y, drop_money);
scr_heal_orb_drop(x, y);

//Monsterdex
//if(global.monster_unlocked[object_index] != 1) global.monster_unlocked[object_index] = 1;

