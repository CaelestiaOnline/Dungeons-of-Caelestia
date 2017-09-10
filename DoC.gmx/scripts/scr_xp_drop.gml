/*
scr_xp_drop(,
    x,
    y,
    xp
);
*/

var drop_x = argument0;
var drop_y = argument1;
var xp = argument2;

var range = 32;

if(xp <= 0) exit;
else {
    while(xp > 0) {
        var current_xp = choose(1, 5, 10, 20, 50, 100, 500, 1000);
        if((xp - current_xp) < 0) continue; 
        else {
            xp -= current_xp;
        }
        var drop_x_inacc = random_range(-range,range);
        var drop_y_inacc = random_range(-range,range);

        if(instance_place(drop_x + drop_x_inacc, drop_y + drop_y_inacc, obj_hindernis)) continue;
        
        var xp_orb = instance_create(drop_x + drop_x_inacc, drop_y + drop_y_inacc, obj_xp_orb);
        xp_orb.xp = current_xp;
        xp_orb.sprite_index = scr_xp_select_sprite(current_xp);
    }

}
