/*
scr_initialise_game();
Initialisiert das Spiel bzw erzeugt alle benötigten Objekte
*/

//Erzeuge Admin-Objekt
globalvar admin;
admin = instance_create(0, 0, obj_admin);
//Erzeuge player_stats
globalvar player_stats;
player_stats = instance_create(0, 0, obj_player_stats);
//Mouse-Indikator
globalvar mouse_ind;
mouse_ind = instance_create(0, 0, obj_mouse_ind);
//Player
//globalvar player;
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
//HUD
globalvar hud;
hud = instance_create(0, 0, obj_hud);
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

//Test-Inventory
instance_create(0, 0, obj_test);


