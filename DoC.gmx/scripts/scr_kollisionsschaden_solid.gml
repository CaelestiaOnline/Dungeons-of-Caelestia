/*
scr_kollisionsschaden(
    Ausgangsobjekt,
    Objekt, das bei Kollision angegriffen werden soll,
    Schaden
);
*/
var object_self = argument0;
var object_other = argument1;
var schaden = argument2; 
if(instance_exists(object_self)) {
///Schaden an Objekt
if(
    place_meeting(object_self.x - 1, object_self.y, object_other)
    || place_meeting(object_self.x + 1, object_self.y, object_other)
    || place_meeting(object_self.x, object_self.y - 1, object_other)
    || place_meeting (object_self.x, object_self.y + 1, object_other))
{
    if(object_self.time == 0)
    {
        object_other.hp -= damage;
    }
}

//Zeit erhöhen
object_self.time++;

//Zeit zurücksetzen
if(object_self.time > object_self.countdown)
{
    object_self.time = 0;
}
}
