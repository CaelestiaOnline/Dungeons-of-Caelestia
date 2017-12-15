/*
scr_get_item_rarity_level(

);
*/
var in_run = false;
if(admin.in_run && instance_exists(obj_run_admin)) in_run = true;

if(in_run) {
switch(run_admin.run_level_index) {
    case 0:
        return choose("normal", "rare");
    case 1:
        return choose("normal", "rare");
    case 2:
        return choose("normal", "rare", "magic");
    case 3:
        return choose("normal", "rare", "magic", "epic");
    case 4:
        return choose("rare", "magic", "epic", "legendary");
    case 5:
        return choose("magic", "epic", "legendary");
}
} else {
    return choose("normal", "rare", "magic", "epic", "legendary");
}
