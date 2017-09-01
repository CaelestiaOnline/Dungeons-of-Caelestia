/*
scr_initialise_enemy_main(

);
*/

//Health
hp = enemy_stats[object_index, enemy_stats_normal.hp];
max_hp = hp;
absorption_hp = 0;

dealt_damage = 0;
old_dealt_damage = 0;
damage_count = 0;
dealt_heal = 0;
old_dealt_heal = 0;
heal_count = 0;

//Depth
scr_set_depth();

//Schaden
damage = enemy_stats[object_index, enemy_stats_normal.damage];
attack_speed = enemy_stats[object_index, enemy_stats_normal.attack_speed];
attack_speed_old = attack_speed;
attack_speed_mult = 1;
time = 0;
hit = false;

//Geschwindigkeit
move = 0;
acc = 0.1;
max_speed = enemy_stats[object_index, enemy_stats_normal.max_speed];
max_speed_old = max_speed;
speed_mult = 1;

//Sprite death
sprite_death = asset_get_index(string("spr_" + object_get_name(object_index) + "_dead"));

//Loot
drop_xp = enemy_stats[object_index, enemy_stats_normal.xp_drop];
drop_money = enemy_stats[object_index, enemy_stats_normal.money_drop];

//Schatten
var shadow_width = sprite_get_width(sprite_index) * 0.3;
shadow_width = clamp(shadow_width, 16, 1000);

shadow_object = 0;
if(instance_exists(shadow_object)) with(shadow_object) instance_destroy();
shadow_object = scr_init_shadow(
    self,
    shadow_width,
    8,
    sprite_get_height(sprite_index)/2
    );
    
//Aktiv?
triggerable = enemy_stats[object_index, 3];
triggered = false;

//Beweglich
movable = enemy_stats[object_index, 2];

//Hitbox
mask_index = asset_get_index(string("spr_" + object_get_name(object_index) + "_colbox"));

//Bullet
y_bullet_offset = sprite_get_height(sprite_index)/2;
y_melee_offset = sprite_get_height(sprite_index)/2;
x_axis_mirror = -1;

//Attack
attack_ready = false;
alarm_set(0, -1);
alarm_set(1, -1);

//Effekte
scr_init_effects();
