/*
scr_get_custom_rarity(
    rarity,
    calculation
);
*/

var rarity_array = -1;
var old_rarity_index = argument0;
var calculation = argument1;

rarity_array[0] = "normal";
rarity_array[1] = "rare";
rarity_array[2] = "magic";
rarity_array[3] = "epic";
rarity_array[4] = "legendary";

var rarity_index = 0;

for(var i = 0; i < array_length_1d(rarity_array); i++) {
    if(rarity_array[i] == old_rarity_index) rarity_index = i;
}

rarity_index = clamp(rarity_index + calculation, 0, array_length_1d(rarity_array)-1);

return rarity_array[rarity_index];
