/*
scr_initialise_enemy_main(
    hp,
    damage,
    attack_speed,
    max_speed,
    todessprite,
    xp drop,
    money drop
);
*/

//Health
hp = argument0;
max_hp = hp;

dealt_damage = 0;
old_dealt_damage = 0;
damage_count = 0;

//Depth
scr_set_depth();

//Schaden
damage = argument1;
attack_speed = argument2;
attack_speed_old = attack_speed;
attack_speed_mult = 1;
time = 0;

//Geschwindigkeit
move = 0;
acc = 0.1;
max_speed = argument3;
max_speed_old = max_speed;
speed_mult = 1;

//Sprite death
sprite_death = argument4;

//Loot
drop_xp = argument5;
drop_money = argument6;
