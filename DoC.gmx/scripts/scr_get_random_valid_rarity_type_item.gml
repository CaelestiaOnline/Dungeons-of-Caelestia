/*
scr_get_random_valid_rarity_type_item(
    type
    rarity
);
*/

var item_type = argument0;
var item_rarity = argument1;
var try_count = 0;
var max_tries = 200;

if(item_type != "") {
do {
    var item_index = irandom(items.count-1);
    try_count++;
} until((item[item_index, 3] == item_type && global.items_unlocked[item_index] && item[item_index, 5] == item_rarity && item_index != items.no_valid_item) || try_count > max_tries);
} else {
do {
    var item_index = irandom(items.count-1);
    try_count++;
} until((global.items_unlocked[item_index] && item[item_index, 5] == item_rarity && item_index != items.no_valid_item) || try_count > max_tries);
}

if(try_count > max_tries) item_index = items.no_valid_item;

return item_index;
