/*
scr_update_grid(

);
*/

///Grid erzeugen
width = 32;
height = width;

w_cells = room_width / width;
h_cells = room_height / height;

global.grid = mp_grid_create(0, 0, w_cells, h_cells, width, height);

//Hindernisse hinzufügen
mp_grid_add_instances(global.grid, obj_hindernis, true);
