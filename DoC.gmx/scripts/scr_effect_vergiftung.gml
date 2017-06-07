/*
scr_effect_vergiftung(
    Schaden
    Zeit in Sekunden, über die der Schaden verursacht wird
    Objekt, das vergiftet wird
    )
*/
var damage = argument0;
var time = argument1
var object = argument2;
var h = 1;
var z = damage div time; 

for(var i = 0; i <= time*60; i++)
{
    if(i div h == 0)
    {
        object.hp -= z;
    }
    if(i div h == 60)
    {
        object.hp -= z;
        x++;
    }
}
