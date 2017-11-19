/*
scr_create_fragment_chest(
    type,
    rarity,
    x,
    y
);
*/

var item_type = argument0;
//choose("prim", "sec", "mag", "item", "pickup");
var chest_sprite_index = asset_get_index("spr_chest_" + item_type);

var item_rarity = argument1;
//choose("normal", "rare", "magic", "epic", "legendary");
var chest_image_blend = scr_get_item_rarity_string_colour(item_rarity);

var chest_x = argument2;
var chest_y = argument3;

var fragment_chest = instance_create(chest_x, chest_y, obj_fragment_chest);
fragment_chest.item_type = item_type;
fragment_chest.sprite_index = chest_sprite_index;
fragment_chest.item_rarity = item_rarity;
fragment_chest.image_blend = chest_image_blend;
