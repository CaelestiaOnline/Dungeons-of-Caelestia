/*
scr_interaction(
);
*/
var object_self = self;
var object_other = obj_player;
if(instance_exists(object_self)) {
if(
    place_meeting(object_self.x - 1, object_self.y, object_other)
    || place_meeting(object_self.x + 1, object_self.y, object_other)
    || place_meeting(object_self.x, object_self.y - 1, object_other)
    || place_meeting (object_self.x, object_self.y + 1, object_other))
{
    if(admin.action_key_pressed) {
        
    }
}
}
