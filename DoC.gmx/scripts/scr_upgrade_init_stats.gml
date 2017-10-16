/*
scr_upgrade_init_stats(

);
*/

for(var i = 0; i < skilltree.count; i++) {
    for(var j = 0; j < global.skilltree_status[i]; j++) {
        scr_upgrade_add_stats(i, j);
    }
}
