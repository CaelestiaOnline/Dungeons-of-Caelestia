/*
scr_kollisionsschaden(
    Ausgangsobjekt,
    Objekt, das bei Kollision angegriffen werden soll,
    Schaden
);
*/
var object_self = argument0;
var object_other = argument1;
var damage = argument2; 

if(instance_exists(object_self)) {
///Schaden an Objekt
if(place_meeting(object_self.x, object_self.y, object_other))
{
    if(object_self.time == 0)
    {
        if(object_other == obj_player) scr_deal_player_damage(damage);
        else scr_deal_damage(object_other, damage);
    }
}

//Zeit erhöhen
object_self.time++;

//Zeit zurücksetzen
if(object_self.time > object_self.attack_speed)
{
    object_self.time = 0;
}
}
