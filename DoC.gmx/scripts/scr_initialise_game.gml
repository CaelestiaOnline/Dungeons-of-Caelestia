/*
scr_initialise_game();
Initialisiert das Spiel bzw erzeugt alle benötigten Objekte
*/

//Window
scr_set_window();

//Randomize
randomize();

//Circle Precision
draw_set_circle_precision(64);

//Grid
global.grid = 0;
scr_update_grid();

//Splash - Screen
global.display_splash_screen = false;

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
globalvar item_object;
item_object = instance_create(0, 0, obj_items);

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

//Progress
globalvar progress;
progress = instance_create(0, 0, obj_progress);

//Progress
globalvar death_stats;
death_stats = instance_create(0, 0, obj_death_stats);

//Hub object
globalvar hub;
hub = instance_create(0, 0, obj_hub);

//Test-Inventory
//instance_create(0, 0, obj_test);


