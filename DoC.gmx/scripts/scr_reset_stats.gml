/*
scr_reset_stats()
Setzt alle Stats (zb nach Tod) auf normale Werte zurück
*/
with(player_stats) {
///Stats
//HP
hp = 100;

//Mana
mana = 100;

//Stamina
stamina = 25;
stamina_usage = 1;
stamina_reg = 0.2;

//Speed
max_player_speed = 5;

//Beschleunigung
player_acc = 0.4;

//Reibung
player_friction = 0.4;
}
