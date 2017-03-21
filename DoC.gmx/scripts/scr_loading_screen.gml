//scr_loading_screen(zeit in steps wie lang der Ladebildschirm angezeigt wird,
//Raum der nach dem Ladebildschirm betreten wird);

var admin;
admin = instance_create(0, 0, obj_loading_screen_admin);
admin.time = argument0;
admin.goal = argument1;
