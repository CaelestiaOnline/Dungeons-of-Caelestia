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
        scr_sidefade(rm_multiplayer, 40);
        break;
    }
    case 3: {
        scr_sidefade(rm_options_menu, 40);
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
