/*
scr_fernkampfangriff(
    schaden
    zu erzeugendes Objekt
    Objekt, das angreift
)
*/
var damage = argument0;
var object_create = argument1;
var object_self = argument2;

//Angriff
if(x <= obj_charakter.x)
{
    if(object_self.countdown_erzeugen == 0)
    {
        var bullet = instance_create(object_self.x + (object_self.sprite_width / 2), object_self.y, object_create);
        bullet.direction = 0;
    }
    if(object_self.countdown_erzeugen < 0)
    {
        object_self.countdown_erzeugen = object_self.angriffsgeschwindigkeit;
    }
    object_self.countdown_erzeugen--;
}
else
{
    if(object_self.countdown_erzeugen == 0)
    {
        var bullet2 = instance_create(object_self.x - (object_self.sprite_width / 2) - sprite_get_width(spr_bullet), object_self.y, object_create);
        bullet2.direction = 180;
        bullet2.image_angle = 180;
    }
    if(object_self.countdown_erzeugen < 0)
    {
        object_self.countdown_erzeugen = object_self.angriffsgeschwindigkeit;
    }
    object_self.countdown_erzeugen--;
    }
