/*
scr_set_window(

);
*/

///Window
//Caption
window_set_caption("Dungeons of Caelestia");

//Window 
//X
window_set_max_width(1920);
window_set_min_width(1280);
//Y
window_set_max_height(640);
window_set_min_height(360);

/*
1920 * 1080
1600 * 900
1360 * 765
1280 * 720
*/

var window_height = 0;
var window_width = 0;

if(display_get_width() < 1280) window_width = 640;
if(display_get_height() < 720) window_width = 360;

if(display_get_width() >= 1280) window_width = 1280;
if(display_get_height() >= 720) window_width = 720;

if(display_get_width() >= 1360) window_width = 1360;
if(display_get_height() >= 765) window_width = 765;

if(display_get_width() >= 1600) window_width = 1600;
if(display_get_height() >= 900) window_width = 900;

if(display_get_width() >= 1920) window_width = 1920;
if(display_get_height() >= 1080) window_width = 1080;

var window_x = 0;
var window_y = 0;

window_set_rectangle(window_x, window_y, window_width, window_height);

//GUI
display_set_gui_size(1920, 1080);
