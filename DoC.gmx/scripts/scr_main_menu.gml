switch(menupos) {
    case 0: {
        room_goto(rm_main_hub);
        break;
    }
    case 1: {
        scr_test_feature();
        break;
    }
    case 2: {
        room_goto(rm_multiplayer);
        break;
    }
    case 3: {
        room_goto(rm_options_menu);
        break;
    }
    case 4: {
        game_end();
        break;
    }
    default: {
        break;
    }
}
