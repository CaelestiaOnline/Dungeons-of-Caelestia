/*
scr_update_grid(

);
*/

if(global.grid != 0) mp_grid_destroy(global.grid);

//Grid erzeugen
width = 32;
height = width;

w_cells = room_width / width;
h_cells = room_height / height;

global.grid = mp_grid_create(0, 0, w_cells, h_cells, width, height);

//Clearen
mp_grid_clear_all(global.grid);

//Hindernisse hinzufügen
mp_grid_add_instances(global.grid, obj_hindernis, true);
