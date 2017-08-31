/*
scr_effect_rem_all(

);
*/

if(self == obj_player) goal_object = player_stats;
else goal_object = self;

for(var i = 0; i < effect.count; i++) {
    instance_destroy(goal_object.effects[i], true);
}
