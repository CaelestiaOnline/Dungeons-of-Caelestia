/*
scr_get_upgrades_sprite(
    index
);
*/

var index = argument0;

var sprite = spr_undefined;

if(asset_get_type("spr_upgrades_" + string(index)) == asset_sprite) {
    sprite = asset_get_index("spr_upgrades_" + string(index));
}

return sprite;
