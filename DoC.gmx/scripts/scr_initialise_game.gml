/*
scr_initialise_game();
Initialisiert das Spiel bzw erzeugt alle benötigten Objekte
*/

//Erzeuge Admin-Objekt
globalvar admin;
admin = instance_create(0, 0, obj_admin);

//Stats
globalvar stats;
stats = instance_create(0, 0, obj_stats);

//Erzeuge player_stats
globalvar player_stats;
player_stats = instance_create(0, 0, obj_player_stats);

//Mouse-Indikator
globalvar mouse_ind;
mouse_ind = instance_create(0, 0, obj_mouse_ind);

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

//Inventory-HUD
globalvar inv_hud;
inv_hud = instance_create(0, 0, obj_hud_inv);

//In game Menu
globalvar menu_in_game;
menu_in_game = instance_create(0, 0, obj_menu_in_game);

//Progress
globalvar progress;
progress = instance_create(0, 0, obj_progress);

//Hub object
globalvar hub;
hub = instance_create(0, 0, obj_hub);

//Grid
globalvar grid;
grid = instance_create(0, 0, obj_grid);


//Test-Inventory
instance_create(0, 0, obj_test);


