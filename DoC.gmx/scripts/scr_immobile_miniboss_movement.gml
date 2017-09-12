/*
scr_immobile_miniboss_movement()
*/
if(obj_player.y < self.y){
    if(move > 0){
        move = 0;
    }
    else{
        move -= acc;
    }
}
if(obj_player.y == self.y){
        move = 0;
}
if(obj_player.y > self.y){
    if(move < 0){
        move = 0;
    }
    else{
        move += acc;
    }
}
if(move < -max_speed){
    move = -max_speed;
}
if(move > max_speed){
    move = max_speed;
}
if(place_meeting(x, y + move, obj_hindernis))
{
    while(!place_meeting(x,y+sign(move),obj_hindernis))
    {
        y += sign(move);
    }
    move = 0;
}
self.y += move;
y = min(y, room_height - spr_height);
y = max(y, spr_height);
