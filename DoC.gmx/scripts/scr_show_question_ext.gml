/*
scr_show_question(
    text
);
*/

if(instance_exists(obj_question_ext_box)) exit;

var text = argument0;
var origin_object = self;

var mecha_hand = instance_create(0, 0, obj_mecha_hand);

var text_box = instance_create(-1000, -1000, obj_question_ext_box);

text_box.text = text;
text_box.origin_object = origin_object;
text_box.mecha_hand = mecha_hand;

mecha_hand.goal_object = text_box;

scr_keylock_abilities(true);
