/*
scr_reset_stats()
Setzt alle Stats (zb nach Tod) auf normale Werte zurück
*/
with(player_stats) {
    event_perform(ev_create, 0);
}
