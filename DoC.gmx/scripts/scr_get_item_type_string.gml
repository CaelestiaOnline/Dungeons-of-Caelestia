/*
scr_get_item_type_string(
    item_type
);
*/

var item_type = argument0;

switch(item_type) {
    case "prim":
        return "Primaerwaffe";
    case "sec":
        return "Sekundaerwaffe";
    case "mag":
        return "Magie-Faehigkeit";
    case "item":
        return "Passives Item";
    case "pickup":
        return "Aktives Item";
}
