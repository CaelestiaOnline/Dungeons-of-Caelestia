/*
scr_reset_stats()
Setzt alle Stats (zb nach Tod) auf normale Werte zurück
*/
with(player_stats) {
    hp = max_hp;    
    mana = max_mana;
    stamina = max_stamina;
}
