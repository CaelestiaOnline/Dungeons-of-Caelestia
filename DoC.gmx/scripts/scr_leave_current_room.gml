/*
scr_leave_current_room(

);
*/


if(room_stats[room, 1] != "hub") {
    scr_enter_hub();
    admin.game_paused = false;
} else {
    scr_leave_game();
}