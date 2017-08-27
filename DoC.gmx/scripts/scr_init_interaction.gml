/*
scr_init_interaction(

);
*/

//Confirmed
confirmed = -1;

//Info-Box
info_box = -1;

//Kollision
colbox = mask_index;

//Interaktion

if(object_is_ancestor(object_index, obj_hindernis_interaction)) {
var intbox_height = 32;

intbox[0] = bbox_left;
intbox[1] = bbox_bottom;
intbox[2] = bbox_right;
intbox[3] = bbox_bottom + intbox_height;

} else if(object_is_ancestor(object_index, obj_floor_interaction)) {

intbox[0] = bbox_left;
intbox[1] = bbox_top;
intbox[2] = bbox_right;
intbox[3] = bbox_bottom;

}
