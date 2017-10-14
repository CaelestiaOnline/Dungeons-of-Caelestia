/*
scr_effect_rem_all(

);
*/

var goal_object = argument0;

if(goal_object == -1) {
    
    goal_object = self;
}
if(string(goal_object.object_index) == string(obj_player) || string(goal_object.object_index) == string(obj_player_death)) goal_object = player_stats;

for(var i = 0; i < effect.count; i++) {
    if(goal_object.effects[i] != -1) {
        instance_destroy(goal_object.effects[i], true);
    }
}
