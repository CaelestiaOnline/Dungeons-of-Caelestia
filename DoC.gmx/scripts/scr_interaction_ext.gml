/*
scr_interaction(
    text,
    info-text
);
*/

var text = argument0;
var info_text = argument1;
if(info_text == "") info_text = "...";
if(text == "") text = "Confirm?";

if(collision_rectangle(intbox[0], intbox[1], intbox[2], intbox[3], obj_player, true, true)) {
    if(admin.action_key_pressed && !obj_player.is_crouching) {
        scr_show_question_ext(text);
    }
}
if(collision_circle(x, y, 100, obj_player, false, true)) {
    scr_show_info(info_text);
}


