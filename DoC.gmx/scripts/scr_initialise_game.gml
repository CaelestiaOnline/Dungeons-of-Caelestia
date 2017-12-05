/*
scr_initialise_game();
Initialisiert das Spiel bzw erzeugt alle benötigten Objekte
*/

//Window
scr_set_window();

//Keylock Numpad
keyboard_set_numlock(true);

//Randomize
randomize();

//Circle Precision
draw_set_circle_precision(64);

//Grid
global.grid = 0;
scr_update_grid();

//Splash - Screen
global.display_splash_screen = false;

//Sound
global.volume_stage = 5;
scr_read_volume();
scr_set_global_volume();

//Objekte
//Erzeuge Admin-Objekt
globalvar admin;
admin = instance_create(0, 0, obj_admin);

//Erzeuge Admin-Objekt
globalvar fps_object;
fps_object = instance_create(0, 0, obj_draw_fps);

//Stats
globalvar stats;
stats = instance_create(0, 0, obj_stats);

//Erzeuge player_stats
globalvar player_stats;
player_stats = instance_create(0, 0, obj_player_stats);

//Erzeuge char_stats
globalvar char_stats;
char_stats = instance_create(0, 0, obj_character_stats);

global.char_stats = -1;
var last_char = scr_read_chars();

scr_init_char(last_char);

//Mouse-Indikator
globalvar mouse;
mouse = instance_create(0, 0, obj_mouse);

//Mouse-Indikator
globalvar mouse_ind;
mouse_ind = instance_create(0, 0, obj_mouse_ind_inv);

//Mouse-Indikator
globalvar mouse_ind_hub;
mouse_ind_hub = instance_create(0, 0, obj_mouse_ind_hub);

//Erzeuge Item_stats
globalvar item_stats_object;
item_stats_object = instance_create(0, 0, obj_item_stats);

//Erzeuge Items
globalvar items_object;
items_object = instance_create(0, 0, obj_items);

//Erzeuge Inventar
globalvar inventory;
inventory = instance_create(0, 0, obj_inventory);
//Sub-Inventories
inventory.inv_storage = instance_create(0, 0, obj_inv_storage);
inventory.inv_pickups = instance_create(0, 0, obj_inv_pickups);
inventory.inv_items = instance_create(0, 0, obj_inv_items);
inventory.inv_prim = instance_create(0, 0, obj_inv_prim);
inventory.inv_sec = instance_create(0, 0, obj_inv_sec);
inventory.inv_mag = instance_create(0, 0, obj_inv_mag);

//Room_stats
globalvar room_stats_object;
room_stats_object = instance_create(0, 0, obj_room_stats);

//Enemy_stats
globalvar enemy_stats_object;
enemy_stats_object = instance_create(0, 0, obj_enemy_stats);

//Enemy_stats
globalvar effect_stats_object;
effect_stats_object = instance_create(0, 0, obj_effect_stats);

//HUD
globalvar hud;
hud = instance_create(0, 0, obj_hud);
//HUD Pickups
globalvar hud_pickups;
hud_pickups = instance_create(0, 0, obj_hud_pickups);
//HUD Storage
globalvar hud_storage;
hud_storage = instance_create(0, 0, obj_hud_storage);
//HUD Items
globalvar hud_items;
hud_items = instance_create(0, 0, obj_hud_items);
//HUD PSM
globalvar hud_psm;
hud_psm = instance_create(0, 0, obj_hud_psm);
//HUD Effects
globalvar hud_effects;
hud_effects = instance_create(0, 0, obj_hud_effects);

//Inventory-HUD
globalvar inv_hud;
inv_hud = instance_create(0, 0, obj_hud_inv);

//In game Menu
globalvar menu_in_game;
menu_in_game = instance_create(0, 0, obj_menu_in_game);

//In game Help
globalvar help_in_game;
help_in_game = instance_create(0, 0, obj_help_in_game);

//In game Stats ext
globalvar stats_ext_in_game;
stats_ext_in_game = instance_create(0, 0, obj_stats_ext_in_game);

//Progress
globalvar progress;
progress = instance_create(0, 0, obj_progress);

//Progress
globalvar death_stats;
death_stats = instance_create(0, 0, obj_death_stats);

//Savestats
globalvar savestats;
savestats = instance_create(0, 0, obj_savestats);
scr_read_stats();

//Hub object
globalvar hub;
hub = instance_create(0, 0, obj_hub);

//Run Admin
globalvar run_admin;
run_admin = noone;

//Skilltree Stats
globalvar skilltree_stats_object;
skilltree_stats_object = instance_create(0, 0, obj_skilltree_stats);

global.skilltree_status = -1;

scr_read_skilltree();

//Test-Inventory
//instance_create(0, 0, obj_test);

//Create File DEBUG
scr_create_savefile_debug();

//Read Savedata
scr_read_progress();

scr_read_stats();

global.items_unlocked = -1;
global.items_found = -1;

scr_read_items();






