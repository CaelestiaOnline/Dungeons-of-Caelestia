/*
scr_init_char(
    char_index,
    update?
);
*/

player_stats.char_index = argument0;

var update = argument1;

//Music
if(audio_is_paused(player_stats.sprinting_music)) {
    audio_stop_sound(player_stats.sprinting_music);
}

with(player_stats) {

name = "Subjekt \#" + string(stats.death_count);

//Revive
revive = false;

switch(char_index) {
    case char.cyborg:
        //HP
        hp = 100;
        
        //Regeneration
        regeneration = 1;
        reg_time = room_speed*2;
        
        //Mana
        mana = 100;
        mana_reg = 1;
        mana_reg_time = room_speed/4;
        
        //Stamina
        stamina = 25;
        stamina_reg = 0.2;
        stamina_usage = 0.5;
        
        //Angriff
        //RootDamage
        root_damage = 5;
        chance_crit = 0.15;
        //Angriffsgeschwindigkeit
        attack_speed = 60;
        
        //Speed
        player_speed = 1;
        max_player_speed = 3.5;
        
        //Beschleunigung
        player_acc = 0.5;
        
        //Sprinten
        max_player_sprint_speed = max_player_speed * 1.8;
        player_sprint_acc = player_acc * 1.8;
        
        //Reibung
        player_friction = 0.4;
        
        //Crouching
        max_player_crouch_speed = max_player_speed * 0.5;
        player_crouch_acc = player_acc * 0.5;
        
        //Chest
        chest_chance = 0.5;
        
        //Heal Orb
        heal_orb_chance = 0.05;
        
    break;
    case char.mage:
        //HP
        hp = 80;
        
        //Regeneration
        regeneration = 1;
        reg_time = room_speed*2;
        
        //Mana
        mana = 120;
        mana_reg = 1;
        mana_reg_time = room_speed/2;
        
        //Stamina
        stamina = 20;
        stamina_reg = 0.2;
        stamina_usage = 0.5;
        
        //Angriff
        //RootDamage
        root_damage = 5;
        chance_crit = 0.15;
        //Angriffsgeschwindigkeit
        attack_speed = 60;
        
        //Speed
        player_speed = 1;
        max_player_speed = 3.5;
        
        //Beschleunigung
        player_acc = 0.5;
        
        //Sprinten
        max_player_sprint_speed = max_player_speed * 1.8;
        player_sprint_acc = player_acc * 1.8;
        
        //Reibung
        player_friction = 0.4;
        
        //Crouching
        max_player_crouch_speed = max_player_speed * 0.5;
        player_crouch_acc = player_acc * 0.5;
        
        //Chest
        chest_chance = 0.5;
        
        //Heal Orb
        heal_orb_chance = 0.05;
    
    break;
    case char.succubus:
        //HP
        hp = 90;
        
        //Regeneration
        regeneration = 1;
        reg_time = room_speed*2;
        
        //Mana
        mana = 100;
        mana_reg = 1;
        mana_reg_time = room_speed/4;
        
        //Stamina
        stamina = 30;
        stamina_reg = 0.2;
        stamina_usage = 0.5;
        
        //Angriff
        //RootDamage
        root_damage = 5;
        chance_crit = 0.15;
        //Angriffsgeschwindigkeit
        attack_speed = 50;
        
        //Speed
        player_speed = 1;
        max_player_speed = 4;
        
        //Beschleunigung
        player_acc = 0.5;
        
        //Sprinten
        max_player_sprint_speed = max_player_speed * 1.8;
        player_sprint_acc = player_acc * 1.8;
        
        //Reibung
        player_friction = 0.4;
        
        //Crouching
        max_player_crouch_speed = max_player_speed * 0.5;
        player_crouch_acc = player_acc * 0.5;
        
        //Chest
        chest_chance = 0.5;
        
        //Heal Orb
        heal_orb_chance = 0.05;
    
    break;
    case char.sanic:
        //HP
        hp = 100;
        
        //Regeneration
        regeneration = 1;
        reg_time = room_speed*2;
        
        //Mana
        mana = 100;
        mana_reg = 1;
        mana_reg_time = room_speed/4;
        
        //Stamina
        stamina = 50;
        stamina_reg = 0.2;
        stamina_usage = 0.5;
        
        //Angriff
        //RootDamage
        root_damage = 5;
        chance_crit = 0.15;
        //Angriffsgeschwindigkeit
        attack_speed = 60;
        
        //Speed
        player_speed = 1;
        max_player_speed = 10;
        
        //Beschleunigung
        player_acc = 0.5;
        
        //Sprinten
        max_player_sprint_speed = max_player_speed * 3;
        player_sprint_acc = player_acc * 3;
        
        //Reibung
        player_friction = 0.4;
        
        //Crouching
        max_player_crouch_speed = max_player_speed * 0.5;
        player_crouch_acc = player_acc * 0.5;
        
        //Chest
        chest_chance = 0.5;
        
        //Heal Orb
        heal_orb_chance = 0.05;
        
    break;
}

//HP
max_hp = hp;
old_max_hp = hp;
old_hp = hp;
absorption_hp = 0;
max_absorption_hp = max_hp * 1.5;

//Regeneration
old_regeneration = regeneration;
old_reg_time = reg_time;

//Mana
max_mana = mana;
old_max_mana = max_mana;
old_mana_reg = mana_reg;
old_mana_reg_time = mana_reg_time;

//Stamina
max_stamina = stamina;
old_max_stamina = stamina;
old_stamina_reg = stamina_reg;
old_stamina_usage = stamina_usage;

//Angriff
//RootDamage
old_root_damage = root_damage;
old_chance_crit = chance_crit;
//Angriffsgeschwindigkeit
old_attack_speed = attack_speed;
attack_speed_mult = 1;
attack_speed_mult_effect = 1;

//Resistenz
resistance_mult = 1;
resistance_mult_effect = 1;
resistance_mult_item = 1;
resistance_mult_armour = 1;

//Stärke
strength_mult = 1;
strength_mult_effect = 1;
strength_mult_item = 1;

//Speed
old_max_player_speed = max_player_speed;
speed_mult = 1;
speed_mult_item = 1;
speed_mult_armour = 1;
speed_mult_prim = 1;
speed_mult_effect = 1;

sprint_speed_mult = 1;
sprint_speed_mult_item = 1;

//Beschleunigung
old_player_acc = player_acc;

//Sprinten
old_max_player_sprint_speed = max_player_sprint_speed;
old_player_sprint_acc = player_sprint_acc;

//Reibung
old_player_friction = player_friction;

//Crouching
old_max_player_crouch_speed = max_player_crouch_speed;
old_player_crouch_acc = player_crouch_acc;

//Chest
old_chest_chance = chest_chance;

//Heal Orb
old_heal_orb_chance = heal_orb_chance;

//Freeze
player_freeze = false;

//Attack ready
attack_ready = true;

//Invincible
invincible = false;

//Invisible
invisible = false;

//Effekte
scr_init_effects();

//Dead
dead = false;

//Sprite
player_stats.char_sprite = scr_get_char_sprite(player_stats.char_index);
scr_update_char_sprite();

//Animation
for(var i = 0; i < char_parts.count; i++) {
    char_sprite_image_index[i] = 1;
    char_sprite_image_number[i] = 0;
    char_sprite_image_speed_mult[i] = 1;
    char_sprite_image_speed[i] = 1;
    char_sprite_x_offset[i] = 0;
    char_sprite_y_offset[i] = 0;
}

//y_offset
y_bullet_offset = 30;
y_melee_offset = 30;

}

if(update) {
scr_upgrade_init_stats();
scr_update_item_stats();
}
